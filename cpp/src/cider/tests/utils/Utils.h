/*
 * Copyright(c) 2022-2023 Intel Corporation.
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#ifndef CIDER_UTILS_H
#define CIDER_UTILS_H

#include <iostream>
#include <random>
#include <string>
#include <vector>

struct CommandResult {
  std::string output;
  int exitstatus;

  friend std::ostream& operator<<(std::ostream& os, const CommandResult& result) {
    os << "command exitstatus: " << result.exitstatus << " output: " << result.output;
    return os;
  }
  bool operator==(const CommandResult& rhs) const {
    return output == rhs.output && exitstatus == rhs.exitstatus;
  }
  bool operator!=(const CommandResult& rhs) const { return !(rhs == *this); }
};

class Random {
 public:
  /**
   * One in X chance of generating a null value in the output vector
   * (e.g: 10 means 1/10 for 10%, 2 means 1/2 for 50%, 1 for 100%, 0 for 0%).
   */
  static bool oneIn(int32_t n, std::mt19937& rng) {
    if (n < 2) {
      return n;
    }
    return randInt32(0, n - 1, rng) == 0;
  }

  static int32_t randInt32(int32_t min, int32_t max, std::mt19937& rng) {
    if (min == max) {
      return min;
    }
    return std::uniform_int_distribution<int32_t>(min, max)(rng);
  }

  static int64_t randInt64(int64_t min, int64_t max, std::mt19937& rng) {
    if (min == max) {
      return min;
    }
    return std::uniform_int_distribution<int64_t>(min, max)(rng);
  }

  static _Float32 randFloat(float_t min, float_t max, std::mt19937& rng) {
    if (min == max) {
      return min;
    }
    return std::uniform_real_distribution<_Float32>(min, max)(rng);
  }
};

class ArrowBuilderUtils {
 public:
  /**
   * Helper method for generating inputs for ArrowArrayBuilder::addUTF8Column()
   * It accepts a vector of strings (i.e., rows of a VarChar/String column)
   * and returns a buffer for strings and a vector for offsets
   * which can then be passed to ArrowArrayBuilder::addUtf8Column()
   */
  static std::tuple<std::string, std::vector<int32_t>> createDataAndOffsetFromStrVector(
      const std::vector<std::string>& input) {
    std::vector<int32_t> offsets{0};
    std::string str_buffer;
    for (auto& s : input) {
      str_buffer = str_buffer + s;
      offsets.push_back(offsets.back() + s.size());
    }

    return {str_buffer, offsets};
  }
};

#endif  // CIDER_UTILS_H
