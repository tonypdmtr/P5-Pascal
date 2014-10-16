/**********************************************************************
*
*                       CONVERT LINE ENDINGS TO UNIX FORMAT
*
* Converts line endings to linux format.
*
*/

#include <stdio.h>

main()

{

    int c;
    int lf = 0;
    int cr = 0;

    while ((c = getchar()) != EOF) {

        if (c == '\n') {

            if (cr) {

                /* Last was lf, this is cr, ignore */
                cr = 0;
                lf = 0;

            } else {

                /* output newline and flag last */
                putchar('\n');
                lf = 1;

            }

         } else if (c == '\r') {

            if (lf) {

                /* last was cr, this is lf, ignore */
                cr = 0;
                lf = 0;
              
            } else {

                /* output newline and flag last */
                putchar('\n');
                cr = 1;

            }

        } else {

            /* output normal character */
            putchar(c);
            cr = 0;
            lf = 0;

        }

    }

}
