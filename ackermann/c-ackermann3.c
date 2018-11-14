/* The authors of this work have released all rights to it and placed it
in the public domain under the Creative Commons CC0 1.0 waiver
(http://creativecommons.org/publicdomain/zero/1.0/).

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Retrieved from: http://en.literateprograms.org/Ackermann_function_(C)?oldid=14914
*/

#include <stdio.h>
#include <stdlib.h> /* atoi() */

static unsigned int calls;

unsigned int naive_ackermann(unsigned int m, unsigned int n) {
    calls++;
    if (m == 0)
        return n + 1;
    else if (n == 0)
        return naive_ackermann(m - 1, 1);
    else
        return naive_ackermann(m - 1, naive_ackermann(m, n - 1));
}

unsigned int iterative_ackermann(unsigned int m, unsigned int n) {
    calls++;
    while (m != 0) {
        if (n == 0) {
            n = 1;
        } else {
            n = iterative_ackermann(m, n - 1);
        }
        m--;
    }
    return n + 1;
}
unsigned int formula_ackermann(unsigned int m, unsigned int n) {
    calls++;
    while(1) {
        switch(m) {
        case 0:  return n + 1;
        case 1:  return n + 2;
        case 2:  return (n << 1) + 3;
        case 3:  return (1 << (n+3)) - 3;
        default:
            if (n == 0) {
                n = 1;
            } else {
                n = formula_ackermann(m, n - 1);
            }
            m--;
            break;
        }
    }
}

int main(int argc, char* argv[]) {
    unsigned int m, n, result;
    m = (unsigned)atoi(argv[1]);
    n = (unsigned)atoi(argv[2]);

    calls = 0;
    result = naive_ackermann(m, n);
    printf("Naive:     %u (%u calls)\n", result, calls);

    calls = 0;
    result = iterative_ackermann(m, n);
    printf("Iterative: %u (%u calls)\n", result, calls);

    calls = 0;
    result = formula_ackermann(m, n);
    printf("Formula:   %u (%u calls)\n", result, calls);

    return 0;
}
