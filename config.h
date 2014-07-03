/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Define to 1 if you have the `getcwd' function. */
#define HAVE_GETCWD 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `dl' library (-ldl). */
#define HAVE_LIBDL 1

/* Define to 1 if you have the <limits.h> header file. */
#define HAVE_LIMITS_H 1

/* Define to 1 if your system has a GNU libc compatible `malloc' function, and
   to 0 otherwise. */
#define HAVE_MALLOC 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <syslog.h> header file. */
#define HAVE_SYSLOG_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "https://github.com/a2o/snoopy/"

/* Define to the full name of this package. */
#define PACKAGE_NAME "Snoopy Logger"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "Snoopy Logger 1.9.0"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "snoopy"

/* "https://github.com/a2o/snoopy/" */
#define PACKAGE_URL /**/

/* Define to the version of this package. */
#define PACKAGE_VERSION "1.9.0"

/* Enable logging of Current Working Directory */
#define SNOOPY_CWD_LOGGING 1

/* Prefix to commands excluded from logging */
#define SNOOPY_EXCLUDE_PREFIX "/usr/local/snoopy/bin"

/* Enable external filtering support */
/* #undef SNOOPY_EXTERNAL_FILTER */

/* External filter command to use */
/* #undef SNOOPY_EXTERNAL_FILTER_COMMAND */

/* Only log commands executed by root */
/* #undef SNOOPY_ROOT_ONLY */

/* Syslog facility to use */
#define SNOOPY_SYSLOG_FACILITY LOG_AUTHPRIV

/* Syslog level to use */
#define SNOOPY_SYSLOG_LEVEL LOG_INFO

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
/* #undef inline */
#endif

/* Define to rpl_malloc if the replacement function should be used. */
/* #undef malloc */

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */
