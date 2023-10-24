# 1 "stra.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "stra.c"





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



# 7 "stra.c" 2
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
# 8 "stra.c" 2



size_t Str_getLength(const char pcSrc[]) {
    size_t uLength = 0;
    
# 13 "stra.c" 3 4
   ((
# 13 "stra.c"
   pcSrc != 
# 13 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 13 "stra.c"
   "pcSrc != NULL"
# 13 "stra.c" 3 4
   , "stra.c", 13, __extension__ __PRETTY_FUNCTION__))
# 13 "stra.c"
                        ;
    while (pcSrc[uLength] != '\0')
        uLength++;
    return uLength;
}

char *Str_copy(char pcDest[], const char pcSrc[]) {
    size_t i;
    
# 21 "stra.c" 3 4
   ((
# 21 "stra.c"
   pcDest != 
# 21 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 21 "stra.c"
   "pcDest != NULL"
# 21 "stra.c" 3 4
   , "stra.c", 21, __extension__ __PRETTY_FUNCTION__))
# 21 "stra.c"
                         ;
    
# 22 "stra.c" 3 4
   ((
# 22 "stra.c"
   pcSrc != 
# 22 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 22 "stra.c"
   "pcSrc != NULL"
# 22 "stra.c" 3 4
   , "stra.c", 22, __extension__ __PRETTY_FUNCTION__))
# 22 "stra.c"
                        ;
    for (i = 0; pcSrc[i] != '\0'; i++) {
        pcDest[i] = pcSrc[i];
    }
    pcDest[i] = '\0';
    return pcDest;
}

char *Str_concat(char pcDest[], const char pcSrc[]) {
    size_t dest_len;
    size_t i;
    
# 33 "stra.c" 3 4
   ((
# 33 "stra.c"
   pcDest != 
# 33 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 33 "stra.c"
   "pcDest != NULL"
# 33 "stra.c" 3 4
   , "stra.c", 33, __extension__ __PRETTY_FUNCTION__))
# 33 "stra.c"
                         ;
    
# 34 "stra.c" 3 4
   ((
# 34 "stra.c"
   pcSrc != 
# 34 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 34 "stra.c"
   "pcSrc != NULL"
# 34 "stra.c" 3 4
   , "stra.c", 34, __extension__ __PRETTY_FUNCTION__))
# 34 "stra.c"
                        ;

    dest_len = Str_getLength(pcDest);
    for (i = 0; pcSrc[i] != '\0'; i++) {
        pcDest[dest_len + i] = pcSrc[i];
    }
    pcDest[dest_len + i] = '\0';
    return pcDest;
}

int Str_compare(const char pcS1[], const char pcS2[]) {
    size_t i;
    
# 46 "stra.c" 3 4
   ((
# 46 "stra.c"
   pcS1 != 
# 46 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 46 "stra.c"
   "pcS1 != NULL"
# 46 "stra.c" 3 4
   , "stra.c", 46, __extension__ __PRETTY_FUNCTION__))
# 46 "stra.c"
                       ;
    
# 47 "stra.c" 3 4
   ((
# 47 "stra.c"
   pcS2 != 
# 47 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 47 "stra.c"
   "pcS2 != NULL"
# 47 "stra.c" 3 4
   , "stra.c", 47, __extension__ __PRETTY_FUNCTION__))
# 47 "stra.c"
                       ;

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
    
# 63 "stra.c" 3 4
   ((
# 63 "stra.c"
   pcHaystack != 
# 63 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 63 "stra.c"
   "pcHaystack != NULL"
# 63 "stra.c" 3 4
   , "stra.c", 63, __extension__ __PRETTY_FUNCTION__))
# 63 "stra.c"
                             ;
    
# 64 "stra.c" 3 4
   ((
# 64 "stra.c"
   pcNeedle != 
# 64 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 64 "stra.c"
   "pcNeedle != NULL"
# 64 "stra.c" 3 4
   , "stra.c", 64, __extension__ __PRETTY_FUNCTION__))
# 64 "stra.c"
                           ;
    n = Str_getLength(pcNeedle);

    pcPointer = (char*) pcHaystack;





    if (pcNeedle[0] == '\0') {
        return pcPointer;
    }
    else if (pcHaystack[0] == '\0') {
        return 
# 77 "stra.c" 3 4
              ((void *)0)
# 77 "stra.c"
                  ;
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
    return 
# 91 "stra.c" 3 4
          ((void *)0)
# 91 "stra.c"
              ;
}
