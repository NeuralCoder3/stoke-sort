#include <cstdlib>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

using namespace std;

extern "C" void sort3(int *buffer) {
  int a = buffer[0];
  int b = buffer[1];
  int c = buffer[2];
  int x = a>b;
  int y = a>c;
  int z = b>c;
  buffer[x+y]=a;
  buffer[1-x+z]=b;
  buffer[2-y-z]=c;
}

// extern "C" void sort3(int *buffer) {
//   // sort 3 elements
//   int tmp;
//   if (buffer[0] > buffer[1]) {
//     tmp = buffer[0];
//     buffer[0] = buffer[1];
//     buffer[1] = tmp;
//   }
//   if (buffer[1] > buffer[2]) {
//     tmp = buffer[1];
//     buffer[1] = buffer[2];
//     buffer[2] = tmp;
//   }
//   if (buffer[0] > buffer[1]) {
//     tmp = buffer[0];
//     buffer[0] = buffer[1];
//     buffer[1] = tmp;
//   }
// }

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
