/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: Kok Wei Pua                                                */
/*--------------------------------------------------------------------*/

#include <assert.h>
#include "str.h"

/*--------------------------------------------------------------------*/

size_t Str_getLength(const char *pcSrc) {
    const char *pcEnd;
    assert(pcSrc != NULL);
    pcEnd = pcSrc;
    while (*pcEnd != '\0') 
        pcEnd++;
    return (size_t)(pcEnd - pcSrc);
}

char *Str_copy(char *pcDest, const char *pcSrc) {
    char *pcPointer; 
    assert(pcDest != NULL);
    assert(pcSrc != NULL);

    pcPointer = pcDest;
    while (*pcSrc != '\0') {
        *pcDest = *pcSrc;
        pcDest++;
        pcSrc++;
    }
    *pcDest = '\0';
    return pcPointer;
}

char *Str_concat(char *pcDest, const char *pcSrc) {
    char *pcPointer;
    assert(pcDest != NULL);
    assert(pcSrc != NULL);

    pcPointer = pcDest;
    if (*pcDest == '\0' && *pcSrc == '\0') {
        return pcDest;
    }

    while (*pcPointer != '\0') {
        pcPointer++;
    }
    
    while (*pcSrc != '\0') {
        *pcPointer = *pcSrc;
        pcPointer++;
        pcSrc++;
    }
    *pcPointer = '\0';
    return pcDest;
}

int Str_compare(const char *pcS1, const char *pcS2) {
    const char *pcPointer1; 
    const char *pcPointer2;
    assert(pcS1 != NULL);
    assert(pcS2 != NULL);

    pcPointer1 = pcS1;
    pcPointer2 = pcS2;

    while (*pcPointer1 != '\0' && *pcPointer1 == *pcPointer2) {
        pcPointer1++;
        pcPointer2++;
    }
    if (*pcPointer1 < *pcPointer2) return -1;
    else if (*pcPointer1 > *pcPointer2) return 1;
    return 0;
}

char *Str_search(const char *pcHaystack, const char *pcNeedle) {
    char* pcPointer1;
    char* pcPointer2;
    assert(pcHaystack != NULL);
    assert(pcNeedle != NULL);

    pcPointer1 = (char*) pcHaystack;
    pcPointer2 = (char*) pcNeedle;

    /* If the pcNeedle string starts with a null byte, return a pointer to the 
    beginning of the string pcHaystack. If the pcHaystack string starts with a 
    null byte, return NULL. */

    if (*pcNeedle == '\0') {
        return (char*) pcPointer1;
    }
    else if (*pcHaystack == '\0') {
        return NULL;
    }

    while (*pcHaystack != '\0') {
        while (*pcPointer1 == *pcPointer2 && *pcPointer2 != '\0') {
            pcPointer1++;
            pcPointer2++;
        }
        
        if (*pcPointer2 == '\0') {
            return (char*) pcHaystack;
        }
        else {
            pcPointer1 = (char*) pcHaystack;
            pcPointer2 = (char*) pcNeedle; 
        }
        pcHaystack++;
        pcPointer1++;
    }
    return NULL;
}