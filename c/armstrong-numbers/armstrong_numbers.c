#include "armstrong_numbers.h"
#include <math.h>

const int N = 7;

bool is_armstrong_number(int candidate) {
    if (candidate < 10) { return true; }

    int num = candidate;
    int sum = 0;
    int d = 0;
    int digits[N];

    while (num) {
        digits[d] = num % 10;
        num /= 10;
        d++;
    }

    for (int i = 0; i < d; i++) {
        sum += pow(digits[i], d);
    }

    return sum == candidate;
}
