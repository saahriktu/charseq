/* Charseq v0.2
 * Seq for chars.
 * Author: Kurashov Artem
 * License: GNU GPLv3
 */
#include <stdio.h>

int main (int argc, char **argv)
{
  if (argc < 3)
    {
      printf ("usace: charseq startchar endchar\n");
      return 1;
    }
  int c;
  for (c = argv[1][0]; c <= argv[2][0]; c++)
    {
      putchar (c);
      putchar (10);
    };
  return 0;
}
