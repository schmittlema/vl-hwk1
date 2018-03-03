#ifndef vtkTkAppInitConfigure_h
#define vtkTkAppInitConfigure_h

/* Whether we are linking to Tcl/Tk statically.  */
/* #undef VTK_TCL_TK_STATIC */

/* Whether Tk widgets are NOT initialized when vtkRendering loads.  */
#define VTK_USE_TK

/* Whether the Tcl/Tk support files are copied to the build dir */
/* #undef VTK_TCL_TK_COPY_SUPPORT_LIBRARY */

/* Where the VTK Tcl packages can be found */
#define VTK_INSTALL_TCL_DIR ""



#endif
