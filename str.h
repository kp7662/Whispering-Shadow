/*--------------------------------------------------------------------*/
/* str.h.c                                                             */
/* Author: Kok Wei Pua                                                */
/*--------------------------------------------------------------------*/

#ifndef STR_INCLUDED
#define STR_INCLUDED
#include <stddef.h>

/*--------------------------------------------------------------------*/

/* Calculate the length of the string pointed to by pcSrc, excluding 
   the terminating null byte, and return the number of characters in 
   the string */

size_t Str_getLength(const char *pcSrc);

/*--------------------------------------------------------------------*/

/* Copy the string pointed to by pcSrc, including the terminating null 
   byte, to the buffer pointed to by pcDest. Return a pointer to the 
   destination string pcDest. */

char *Str_copy(char *pcDest, const char *pcSrc);

/*--------------------------------------------------------------------*/

/* Append the pcSrc string to the pcDest string, overwriting the terminating 
   null byte ('\0') at the end of pcDest, and then adds a terminating null 
   byte. Return a pointer to the resulting string pcDest. */

char *Str_concat(char *pcDest, const char *pcSrc);

/*--------------------------------------------------------------------*/

/* Compare the two strings pcS1 and pcS2.  Return an integer less than, 
   equal to, or greater than zero if pcS1 is found, respectively, to be 
   less than, to match, or be greater than pcS2. */

int Str_compare(const char *pcS1, const char *pcS2);

/*--------------------------------------------------------------------*/

/* Find the first occurrence of the substring pcNeedle in the string 
   pcHaystack. The terminating null bytes ('\0') are not compared. Return 
   a pointer to the beginning of the located substring, or NULL if the 
   substring is not found.*/

char *Str_search(const char *pcHaystack, const char *pcNeedle);

#endif