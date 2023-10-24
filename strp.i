# 1 "strp.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "strp.c"





# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 428 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 442 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 443 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 444 "/usr/include/sys/cdefs.h" 2 3 4
# 429 "/usr/include/features.h" 2 3 4
# 452 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 453 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 7 "strp.c" 2
# 1 "str.h" 1







# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 216 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 328 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 9 "str.h" 2








# 16 "str.h"
size_t Str_getLength(const char *pcSrc);







char *Str_copy(char *pcDest, const char *pcSrc);







char *Str_concat(char *pcDest, const char *pcSrc);







int Str_compare(const char *pcS1, const char *pcS2);
# 49 "str.h"
char *Str_search(const char *pcHaystack, const char *pcNeedle);
# 8 "strp.c" 2



size_t Str_getLength(const char *pcSrc) {
    const char *pcEnd;
    
# 13 "strp.c" 3 4
   ((
# 13 "strp.c"
   pcSrc != 
# 13 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 13 "strp.c"
   "pcSrc != NULL"
# 13 "strp.c" 3 4
   , "strp.c", 13, __extension__ __PRETTY_FUNCTION__))
# 13 "strp.c"
                        ;
    pcEnd = pcSrc;
    while (*pcEnd != '\0')
        pcEnd++;
    return (size_t)(pcEnd - pcSrc);
}

char *Str_copy(char *pcDest, const char *pcSrc) {
    char *pcPointer;
    
# 22 "strp.c" 3 4
   ((
# 22 "strp.c"
   pcDest != 
# 22 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 22 "strp.c"
   "pcDest != NULL"
# 22 "strp.c" 3 4
   , "strp.c", 22, __extension__ __PRETTY_FUNCTION__))
# 22 "strp.c"
                         ;
    
# 23 "strp.c" 3 4
   ((
# 23 "strp.c"
   pcSrc != 
# 23 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 23 "strp.c"
   "pcSrc != NULL"
# 23 "strp.c" 3 4
   , "strp.c", 23, __extension__ __PRETTY_FUNCTION__))
# 23 "strp.c"
                        ;

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
    
# 37 "strp.c" 3 4
   ((
# 37 "strp.c"
   pcDest != 
# 37 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 37 "strp.c"
   "pcDest != NULL"
# 37 "strp.c" 3 4
   , "strp.c", 37, __extension__ __PRETTY_FUNCTION__))
# 37 "strp.c"
                         ;
    
# 38 "strp.c" 3 4
   ((
# 38 "strp.c"
   pcSrc != 
# 38 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 38 "strp.c"
   "pcSrc != NULL"
# 38 "strp.c" 3 4
   , "strp.c", 38, __extension__ __PRETTY_FUNCTION__))
# 38 "strp.c"
                        ;

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
    
# 61 "strp.c" 3 4
   ((
# 61 "strp.c"
   pcS1 != 
# 61 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 61 "strp.c"
   "pcS1 != NULL"
# 61 "strp.c" 3 4
   , "strp.c", 61, __extension__ __PRETTY_FUNCTION__))
# 61 "strp.c"
                       ;
    
# 62 "strp.c" 3 4
   ((
# 62 "strp.c"
   pcS2 != 
# 62 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 62 "strp.c"
   "pcS2 != NULL"
# 62 "strp.c" 3 4
   , "strp.c", 62, __extension__ __PRETTY_FUNCTION__))
# 62 "strp.c"
                       ;

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
    
# 79 "strp.c" 3 4
   ((
# 79 "strp.c"
   pcHaystack != 
# 79 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 79 "strp.c"
   "pcHaystack != NULL"
# 79 "strp.c" 3 4
   , "strp.c", 79, __extension__ __PRETTY_FUNCTION__))
# 79 "strp.c"
                             ;
    
# 80 "strp.c" 3 4
   ((
# 80 "strp.c"
   pcNeedle != 
# 80 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 80 "strp.c"
   "pcNeedle != NULL"
# 80 "strp.c" 3 4
   , "strp.c", 80, __extension__ __PRETTY_FUNCTION__))
# 80 "strp.c"
                           ;

    pcPointer1 = (char*) pcHaystack;
    pcPointer2 = (char*) pcNeedle;





    if (*pcNeedle == '\0') {
        return (char*) pcPointer1;
    }
    else if (*pcHaystack == '\0') {
        return 
# 93 "strp.c" 3 4
              ((void *)0)
# 93 "strp.c"
                  ;
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
    return 
# 112 "strp.c" 3 4
          ((void *)0)
# 112 "strp.c"
              ;
}
