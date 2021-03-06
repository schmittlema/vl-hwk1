/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtk_diy2.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtk_diy2
// .SECTION Description

#ifndef vtk_diy2_h
#define vtk_diy2_h

/* #undef VTK_USE_SYSTEM_DIY2 */

#define VTK_DIY2_QUOTE_HEADER_NAME(str) #str


#ifndef VTK_USE_SYSTEM_DIY2
#  define VTK_DIY2_HEADER(header) VTK_DIY2_QUOTE_HEADER_NAME(header)
#  define diy vtkdiy // mangle namespace diy
#else
#  define VTK_DIY2_HEADER(header) #header
#endif

// disable warnings
#if defined(_MSC_VER)

#  define VTKDIY2_WARNING_PRAGMAS

#  define VTKDIY2_WARNINGS_PUSH __pragma(warning(push))
#  define VTKDIY2_WARNINGS_POP  __pragma(warning(pop))

#elif defined(__GNUC__) && !defined(__INTEL_COMPILER) && !defined(__PGI) // for GCC and Clang only

// Older versions of GCC don't support the push/pop pragmas and some dont
// recognize the suppressed warnings
#  if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
#    define VTKDIY2_WARNING_PRAGMAS \
       _Pragma("GCC diagnostic ignored \"-Wshadow\"") \
       _Pragma("GCC diagnostic ignored \"-Wunused-parameter\"") \
       _Pragma("GCC diagnostic ignored \"-Wunused-result\"")

#    define VTKDIY2_WARNINGS_PUSH _Pragma("GCC diagnostic push")
#    define VTKDIY2_WARNINGS_POP  _Pragma("GCC diagnostic pop")
#  else // Older GCC / Clang
#    define VTKDIY2_WARNING_PRAGMAS
#    define VTKDIY2_WARNINGS_PUSH
#    define VTKDIY2_WARNINGS_POP
#  endif

#else // all other compilers
#  define VTKDIY2_WARNING_PRAGMAS
#  define VTKDIY2_WARNINGS_PUSH
#  define VTKDIY2_WARNINGS_POP
#endif

#define VTKDIY2_PRE_INCLUDE \
   VTKDIY2_WARNINGS_PUSH \
   VTKDIY2_WARNING_PRAGMAS

#define VTKDIY2_POST_INCLUDE \
   VTKDIY2_WARNINGS_POP

#endif
