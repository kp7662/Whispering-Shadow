/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: Kok Wei Pua                                                */
/*--------------------------------------------------------------------*/

#include <assert.h>
#include "str.h"

/*--------------------------------------------------------------------*/

size_t Str_getLength(const char pcSrc[]) {
    size_t uLength = 0;
    assert(pcSrc != NULL);
    while (pcSrc[uLength] != '\0')
        uLength++;
    return uLength;
}

char *Str_copy(char pcDest[], const char pcSrc[]) {
    size_t i;
    assert(pcDest != NULL);
    assert(pcSrc != NULL);
    for (i = 0; pcSrc[i] != '\0'; i++) {
        pcDest[i] = pcSrc[i];
    }
    pcDest[i] = '\0';
    return pcDest;
}

char *Str_concat(char pcDest[], const char pcSrc[]) {
    size_t dest_len;
    size_t i;
    assert(pcDest != NULL);
    assert(pcSrc != NULL);

    dest_len = Str_getLength(pcDest);
    for (i = 0; pcSrc[i] != '\0'; i++) {
        pcDest[dest_len + i] = pcSrc[i];
    }
    pcDest[dest_len + i] = '\0';
    return pcDest;
}

int Str_compare(const char pcS1[], const char pcS2[]) {
    size_t i;
    assert(pcS1 != NULL);
    assert(pcS2 != NULL);

    i = 0;
    while (pcS1[i] != '\0' && pcS1[i] == pcS2[i]) {
        i++;
    }
    if (pcS1[i] < pcS2[i]) return -1;
    else if (pcS1[i] > pcS2[i]) return 1;
    return 0;
}

char *Str_search(const char pcHaystack[], const char pcNeedle[]) {
    size_t i;
    size_t j; 
    size_t n;
    char* pcPointer;
    assert(pcHaystack != NULL);
    assert(pcNeedle != NULL);
    n = Str_getLength(pcNeedle);

    pcPointer = (char*) pcHaystack;

    /* If the needle string starts with a null byte, return a pointer to the 
       beginning of the string haystack. If the haystack string starts with a 
       null byte, return NULL. */

    if (pcNeedle[0] == '\0') {
        return pcPointer;
    }
    else if (pcHaystack[0] == '\0') {
        return NULL;
    }

    for (i = 0; pcHaystack[i] != '\0'; i++) {
        for (j = 0; pcNeedle[j] != '\0'; j++) {
            if (pcHaystack[i + j] != pcNeedle[j]) {
                break;
            }
            if (j == n - 1) {
                return pcPointer;
            }
        }
        pcPointer++;
    }
    return NULL;
}
