/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkTkInternals.h.in

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkTkInternals_h
#define vtkTkInternals_h

#include "vtkRenderingOpenGLConfigure.h" // for COCOA, X11, WIN32

#define HAVE_LIMITS_H
#define HAVE_UNISTD_H

// This widget requires access to structures that are normally
// not visible to Tcl/Tk applications. For this reason you must
// have access to tkInt.h
// #include "tkInt.h"
#ifdef _WIN32
#ifdef  __cplusplus
extern "C"
{
#endif
#include "tkWinInt.h"
#ifdef  __cplusplus
}
#endif
#endif

#endif /* vtkTkInternals_h */

