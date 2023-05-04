# Copyright(c) 2022-2023 Intel Corporation.
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

set(DEP_LIBS benchmark)

add_executable(HashMapBenchmark HashMapBenchmark.cpp)
add_executable(StringHashMapBenchmark StringHashMapBenchmark.cpp)


target_compile_options(HashMapBenchmark PRIVATE -msse4.2 -msse2)
target_compile_options(StringHashMapBenchmark PRIVATE -msse4.2 -msse2)

target_link_libraries(HashMapBenchmark benchmark ${DEP_LIBS} 
                      cider_hashtable)
target_link_libraries(StringHashMapBenchmark benchmark ${DEP_LIBS}
                      cider_hashtable)
