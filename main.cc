// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <cstdlib>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

using namespace std;

extern "C" void sort3(int *buffer) {
  // sort 3 elements
  int tmp;
  if (buffer[0] > buffer[1]) {
    tmp = buffer[0];
    buffer[0] = buffer[1];
    buffer[1] = tmp;
  }
  if (buffer[1] > buffer[2]) {
    tmp = buffer[1];
    buffer[1] = buffer[2];
    buffer[2] = tmp;
  }
  if (buffer[0] > buffer[1]) {
    tmp = buffer[0];
    buffer[0] = buffer[1];
    buffer[1] = tmp;
  }
}

int main(int argc, char **argv) {
  const auto itr = atoi(argv[1]);

  auto ret = 0;
  int a = 1;
  int b = 1;
  int c = 1;
  for (auto i = 0; i < itr; ++i) {

    // a = (a * 19 + 7 + (rand() % 5));
    // b = (b * 23 + 11 + (rand() % 7));
    // c = (c * 29 + 13 + (rand() % 11));
    
    // generate three random numbers
    a = rand();
    b = rand();
    c = rand();

    int buffer[3] = {a, b, c};

    sort3(buffer);

    if (buffer[0] > buffer[1] || buffer[1] > buffer[2]) {
      ret = 1;
      printf("Invalid sort of %d %d %d\n",a,b,c);
      printf("to %d %d %d\n",buffer[0],buffer[1],buffer[2]);
    }
  }

  return ret;
}
