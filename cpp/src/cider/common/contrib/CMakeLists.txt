# Copyright(c) 2022-2023 Intel Corporation.
# Copyright (c) 2016-2022 ClickHouse, Inc.
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -w")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w")

if(WITH_COVERAGE)
  set(WITHOUT_COVERAGE_LIST ${WITHOUT_COVERAGE})
  separate_arguments(WITHOUT_COVERAGE_LIST)

  # disable coverage for contib files and build with optimisations
  if(COMPILER_CLANG)
    add_compile_options(-O3 -DNDEBUG -finline-functions -finline-hint-functions
                        ${WITHOUT_COVERAGE_LIST})
  else()
    add_compile_options(-O3 -DNDEBUG -finline-functions
                        ${WITHOUT_COVERAGE_LIST})
  endif()
endif()

if(SANITIZE STREQUAL "undefined")
  # 3rd-party libraries usually not intended to work with UBSan.
  add_compile_options(-fno-sanitize=undefined)
endif()

set_property(DIRECTORY PROPERTY EXCLUDE_FROM_ALL 1)

# add_contrib cmake_folder[ base_folder1[, ...base_folderN]]
function(add_contrib cmake_folder)
  if(ARGN)
    set(base_folders ${ARGN})
  else()
    set(base_folders ${cmake_folder})
  endif()

  foreach(base_folder ${base_folders})
    # some typos in the code
    if(NOT IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${base_folder}")
      message(
        FATAL_ERROR
          "No such base folder '${base_folder}' (for '${cmake_folder}' cmake folder). Typo in the base folder name?"
      )
    endif()

    file(GLOB contrib_files "${base_folder}/*")

    if(NOT contrib_files)
      # Checking out *all* submodules takes > 5 min. Therefore, the smoke build
      # ("FastTest") in CI initializes only the set of submodules minimally
      # needed for a build and we cannot assume here that all submodules are
      # populated.
      message(
        STATUS "submodule ${base_folder} is missing or empty. to fix try run:")
      message(STATUS "    git submodule update --init")
      return()
    endif()
  endforeach()

  message(
    STATUS
      "Adding contrib module ${base_folders} (configuring with ${cmake_folder})"
  )
  add_subdirectory(${cmake_folder})
endfunction()

add_contrib(cityhash102)
