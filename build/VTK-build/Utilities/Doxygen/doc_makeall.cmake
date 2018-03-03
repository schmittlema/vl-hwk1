# -------------------------------------------------------------------------
# Doxygen documentation batch
# -------------------------------------------------------------------------

set(DOXYGEN "/usr/bin/doxygen")
set(DOXYGEN_DOT_EXECUTABLE "/usr/bin/dot")
set(HTML_HELP_COMPILER "")
set(PERL "/usr/bin/perl")
set(DOXYGEN_KEEP_TEMP "OFF")

if(NOT DOXYGEN)
  message(FATAL_ERROR "error: cannot build VTK documentation without doxygen")
endif()
if(NOT DOXYGEN_DOT_EXECUTABLE)
  message(FATAL_ERROR "error: cannot build VTK documentation without dot")
endif()
if(NOT PERL)
  message(FATAL_ERROR "error: cannot build VTK documentation without perl")
endif()

# PROJECT_NAME:
# Documentation/project name. Used in some of the resulting file names and
# xrefs to uniquify two or more projects linked together through their
# Doxygen's tag files. Mandatory for each documentation set.
# Note: might be the same as the doxyfile's PROJECT_NAME
# Example:
#   PROJECT_NAME=VTK
#
set(PROJECT_NAME VTK)

# PATH_TO_VTK_DOX_SCRIPTS:
# Path to the directory holding the Perl scripts used to produce the VTK doc
# in Doxygen format. You need the VTK source files or a local copy of
# these scripts.
# Example:
#   PATH_TO_VTK_DOX_SCRIPTS=/home/schmittle/Documents/Vision_Learning/build/VTK/Utilities/Doxygen
#
set(PATH_TO_VTK_DOX_SCRIPTS "/home/schmittle/Documents/Vision_Learning/build/VTK/Utilities/Doxygen")

# SOURCE_DIR:
# Source directory. The top directory of the source files.
# Example:
#   SOURCE_DIR=/home/schmittle/Documents/Vision_Learning/build/VTK
#
set(SOURCE_DIR "/home/schmittle/Documents/Vision_Learning/build/VTK")

# REL_PATH_TO_TOP:
# Relative path from the top directory of the source files to the directory
# (or top directory) holding the files to document. Useful if several parts
# of the same source directory should be documented separately.
# Example:
#   REL_PATH_TO_TOP=.
#   REL_PATH_TO_TOP=framework/src
set(REL_PATH_TO_TOP .)

# INTERMEDIATE_DOX_DIR:
# Directory where the intermediate Doxygen files should be stored (mainly
# these headers files converted from the VTK format to the Doxygen format).
# This directory is erased at the end of this script, unless you comment
# the corresponding line.
# DOXTEMP might be used to simplify the syntax.
# Example:
#   DOXTEMP=DOXTEMP=/home/schmittle/Documents/Vision_Learning/build/VTK-build/Utilities/Doxygen
#   INTERMEDIATE_DOX_DIR=$DOXTEMP/dox
#
set(DOXTEMP "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Utilities/Doxygen")
set(INTERMEDIATE_DOX_DIR "${DOXTEMP}/dox")

# DATA_ROOT:
# Data directory. The root directory of the data files.
# Example:
#   DATA_ROOT=
#
set(DATA_ROOT "")

# GITWEB, GITWEB_SUFFIX, GITWEB_CHECKOUT,
# GITWEB_DATA, GITWEB_DATA_SUFFIX, GITWEB_DATA_CHECKOUT:
# URL to the GITWeb of the project + same in checkout mode (i.e. appending a
# file name to this URL will retrieve the contents of the file). In the same way
# GITWEB_SUFFIX will be appended to the result.
# Same applies to GITWEB_DATA, which is the URL to the GITWeb
# of the Data's project.
# Example:
#   GITWEB=http://public.kitware.com/cgi-bin/viewcvs.cgi
#   GITWEB_SUFFIX=?root=VTK
#   GITWEB_CHECKOUT=http://public.kitware.com/cgi-bin/viewcvs.cgi/*checkout*
#   GITWEB_DATA=http://public.kitware.com/cgi-bin/viewcvs.cgi
#   GITWEB_DATA_SUFFIX=?root=VTKData
#   GITWEB_DATA_CHECKOUT=http://public.kitware.com/cgi-bin/viewcvs.cgi/*checkout*
#
set(GITWEB http://vtk.org/gitweb) # not used
set(GITWEB_SUFFIX ) #empty for git ?p=VTK)
set(GITWEB_CHECKOUT http://vtk.org/gitweb?p=VTK.git;a=blob;f=)
set(GITWEB_DATA http://vtk.org/gitweb)
set(GITWEB_DATA_SUFFIX ) # empty for git ?p=VTKData)
set(GITWEB_DATA_CHECKOUT http://vtk.org/gitweb?p=VTKData.git;a=blob;f=)

# DOXYFILE:
# Path to the Doxygen configuration file (i.e. doxyfile).
# Example:
#   DOXYFILE $DOXTEMP/doxyfile
#
set(DOXYFILE "${DOXTEMP}/doxyfile")

# OUTPUT_DIRECTORY ALLOW_ERASE_OUTPUT_DIRECTORY:
# Path to the Doxygen output directory (where the resulting doc is stored).
# Note: should be the same as your doxyfile's OUTPUT_DIRECTORY
# If ON, allows the output directory to be erased when some advanced output
# file have been produced (HTML Help, or TAR archive for example).
# Example:
#   OUTPUT_DIRECTORY $DOXTEMP/doc
#   ALLOW_ERASE_OUTPUT_DIRECTORY ON
#
set(OUTPUT_DIRECTORY "${DOXTEMP}/doc")
set(ALLOW_ERASE_OUTPUT_DIRECTORY ON)

# COMPILE_HTML_HELP RESULTING_HTML_HELP_FILE:
# Compile the CHM (Compressed HTML) HTML Help file, name of the resulting
# file. If set to ON and name is non-empty these options will actually
# trigger the HTML-Help compiler to create the CHM. The resulting
# file (usually index.chm) will be renamed to this name.
# Note: if ON, the whole $OUTPUT_DIRECTORY will be erased at the end of
#       this script, since this file is considered to be one of the
#       advanced final output, unless ALLOW_ERASE_OUTPUT_DIRECTORY is OFF
# Note: your doxyfile should be configured to enable HTML Help creation
#       (using GENERATE_HTML   YES, GENERATE_HTMLHELP   YES)
# Example:
#   COMPILE_HTML_HELP ON
#   COMPILE_HTML_HELP OFF
#   RESULTING_HTML_HELP_FILE $DOXTEMP/vtk9.0.chm
#
set(COMPILE_HTML_HELP OFF)
set(RESULTING_HTML_HELP_FILE "${DOXTEMP}/vtk9.0.chm")

# CREATE_HTML_TARZ_ARCHIVE RESULTING_HTML_TARZ_ARCHIVE_FILE:
# Create a compressed (gzip) tar archive of the html directory (located
# under the OUTPUT_DIRECTORY), and name of the resulting archive file.
# Note: your doxyfile should be configured to enable HTML creation
#       (using GENERATE_HTML   YES)
# Example:
#   CREATE_HTML_TARZ_ARCHIVE ON
#   CREATE_HTML_TARZ_ARCHIVE OFF
#   RESULTING_HTML_TARZ_ARCHIVE_FILE $DOXTEMP/vtk9.0-html.tar.gz
#
set(CREATE_HTML_TARZ_ARCHIVE OFF)
set(RESULTING_HTML_TARZ_ARCHIVE_FILE "${DOXTEMP}/vtk9.0-html.tar.gz")

# DOWNLOAD_VTK_TAGFILE VTK_TAGFILE VTK_TAGFILE_REMOTE_DIR VTK_TAGFILE_DEST_DIR:
# Download the VTK tag file, name, remote location and destination dir of this
# tag file. If set to ON, the tag file is retrieved from its remote location
# using wget and stored in the destination dir. It will be automatically
# deleted at the end of this script.
# Note: your doxyfile must be tailored to make use-of or create this tag file.
#    (using TAGFILES = vtk9-nightly.tag=http://www.vtk.org/doc/nightly/html
#        or GENERATE_TAGFILE = "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Utilities/Doxygen/vtk9.0.tag")
# Example:
#   DOWNLOAD_VTK_TAGFILE=OFF
#   VTK_TAGFILE=vtk9-nightly.tag
#   VTK_TAGFILE_REMOTE_DIR=http://www.vtk.org/doc/nightly/html
#   VTK_TAGFILE_DEST_DIR=$DOXTEMP
#
set(DOWNLOAD_VTK_TAGFILE ON)
set(VTK_TAGFILE vtkNightlyDoc.tag.gz)
set(VTK_TAGFILE_REMOTE_DIR http://www.vtk.org/doc/nightly)
set(VTK_TAGFILE_DEST_DIR "${DOXTEMP}")

# ----------------------------------------------------------------------------
# SOURCE_DIRECTORIES
#
# This list is processed by several perl scripts below. Keeping it in one
# list avoids the possibility that multiple lists might get out of sync with
# rushed edits...
#
set(SOURCE_DIRECTORIES

  "/home/schmittle/Documents/Vision_Learning/build/VTK/Accelerators/Vtkm"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Accelerators/Vtkm"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Charts/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Charts/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/Color"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/Color"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/ComputationalGeometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/ComputationalGeometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/DataModel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/DataModel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/ExecutionModel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/ExecutionModel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/Math"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/Math"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/Misc"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/Misc"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/System"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/System"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Common/Transforms"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Common/Transforms"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Domains/Chemistry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Domains/Chemistry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Domains/ChemistryOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Domains/ChemistryOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Domains/Microscopy"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Domains/Microscopy"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/AMR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/AMR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Extraction"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Extraction"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/FlowPaths"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/FlowPaths"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/General"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/General"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Generic"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Generic"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Geometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Geometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Hybrid"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Hybrid"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/HyperTree"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/HyperTree"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Imaging"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Imaging"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Modeling"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Modeling"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/MomentInvariants"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/MomentInvariants"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/OpenTurns"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/OpenTurns"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Parallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Parallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelDIY2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelDIY2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelFlowPaths"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelFlowPaths"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelGeometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelGeometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelImaging"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelImaging"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelMPI"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelMPI"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelStatistics"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelStatistics"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ParallelVerdict"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ParallelVerdict"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Points"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Points"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Programmable"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Programmable"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Python"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Python"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/ReebGraph"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/ReebGraph"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/SMP"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/SMP"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Selection"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Selection"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Sources"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Sources"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Statistics"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Statistics"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Texture"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Texture"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Topology"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Topology"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Filters/Verdict"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Filters/Verdict"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/GUISupport/MFC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/GUISupport/MFC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/GUISupport/Qt"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/GUISupport/Qt"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/GUISupport/QtOpenGL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/GUISupport/QtOpenGL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/GUISupport/QtSQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/GUISupport/QtSQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/GUISupport/QtWebkit"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/GUISupport/QtWebkit"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Geovis/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Geovis/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ADIOS"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ADIOS"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/AMR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/AMR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/EnSight"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/EnSight"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Exodus"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Exodus"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Export"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Export"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ExportOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ExportOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/FFMPEG"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/FFMPEG"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/GDAL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/GDAL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/GeoJSON"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/GeoJSON"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Geometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Geometry"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Image"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Image"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Import"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Import"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Infovis"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Infovis"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/LAS"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/LAS"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/LSDyna"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/LSDyna"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Legacy"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Legacy"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/MINC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/MINC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/MPIImage"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/MPIImage"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/MPIParallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/MPIParallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Movie"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Movie"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/MySQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/MySQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/NetCDF"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/NetCDF"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ODBC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ODBC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/PDAL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/PDAL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/PLY"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/PLY"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Parallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Parallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ParallelExodus"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ParallelExodus"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ParallelLSDyna"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ParallelLSDyna"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ParallelNetCDF"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ParallelNetCDF"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ParallelXML"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ParallelXML"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/ParallelXdmf3"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/ParallelXdmf3"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/PostgreSQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/PostgreSQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/SQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/SQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/SegY"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/SegY"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/TRUCHAS"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/TRUCHAS"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/TecplotTable"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/TecplotTable"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/VPIC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/VPIC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Video"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Video"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/XML"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/XML"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/XMLParser"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/XMLParser"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Xdmf2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Xdmf2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/IO/Xdmf3"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/IO/Xdmf3"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Color"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Color"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Fourier"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Fourier"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/General"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/General"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Hybrid"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Hybrid"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Math"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Math"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Morphological"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Morphological"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/OpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/OpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Sources"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Sources"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Statistics"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Statistics"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Imaging/Stencil"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Imaging/Stencil"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Infovis/Boost"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Infovis/Boost"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Infovis/BoostGraphAlgorithms"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Infovis/BoostGraphAlgorithms"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Infovis/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Infovis/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Infovis/Layout"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Infovis/Layout"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Interaction/Image"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Interaction/Image"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Interaction/Style"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Interaction/Style"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Interaction/Widgets"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Interaction/Widgets"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Parallel/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Parallel/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Parallel/MPI"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Parallel/MPI"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Parallel/MPI4Py"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Parallel/MPI4Py"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Annotation"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Annotation"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Context2D"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Context2D"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/ContextOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/ContextOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/External"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/External"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/FreeType"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/FreeType"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/FreeTypeFontConfig"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/FreeTypeFontConfig"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/GL2PSOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/GL2PSOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Image"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Image"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/LICOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/LICOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/LOD"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/LOD"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Label"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Label"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Matplotlib"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Matplotlib"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/OSPRay"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/OSPRay"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Oculus"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Oculus"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/OpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/OpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/OpenVR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/OpenVR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/OptiX"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/OptiX"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Parallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Parallel"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/ParallelLIC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/ParallelLIC"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Qt"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Qt"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/SceneGraph"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/SceneGraph"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Tk"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Tk"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/Volume"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/Volume"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/VolumeAMR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/VolumeAMR"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Rendering/VolumeOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Rendering/VolumeOpenGL2"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Testing/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Testing/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Testing/GenericBridge"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Testing/GenericBridge"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Testing/IOSQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Testing/IOSQL"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Testing/Rendering"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Testing/Rendering"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Views/Context2D"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Views/Context2D"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Views/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Views/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Views/Geovis"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Views/Geovis"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Views/Infovis"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Views/Infovis"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Views/Qt"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Views/Qt"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Web/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Web/Core"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Web/Python"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Web/Python"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Web/WebGLExporter"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Web/WebGLExporter"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Wrapping/Java"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Wrapping/Java"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Wrapping/PythonCore"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Wrapping/PythonCore"
  "/home/schmittle/Documents/Vision_Learning/build/VTK/Wrapping/Tools"
  "/home/schmittle/Documents/Vision_Learning/build/VTK-build/Wrapping/Tools"
)

# ----------------------------------------------------------------------------
# Print some progress. Be nice to the build watcher.

macro(step n desc)
  message(STATUS "")
  message(STATUS "Building VTK docs: step ${n} of 13, (${desc})")
  message(STATUS "----------------------------------------------------------------------------")
endmacro()

macro(echo v)
  message(STATUS "${v}='${${v}}'")
endmacro()

# ----------------------------------------------------------------------------
# Values of this script's variables:

message(STATUS "")
message(STATUS "Building VTK Documentation: initial variable values")
message(STATUS "----------------------------------------------------------------------------")

foreach(var
  CMAKE_CURRENT_LIST_FILE
  CMAKE_MAJOR_VERSION
  CMAKE_MINOR_VERSION
  CMAKE_PATCH_VERSION
  DOXYGEN
  DOXYGEN_DOT_EXECUTABLE
  HTML_HELP_COMPILER
  PERL
  PROJECT_NAME
  PATH_TO_VTK_DOX_SCRIPTS
  SOURCE_DIR
  REL_PATH_TO_TOP
  DOXTEMP
  INTERMEDIATE_DOX_DIR
  DATA_ROOT
  GITWEB
  GITWEB_SUFFIX
  GITWEB_CHECKOUT
  GITWEB_DATA
  GITWEB_DATA_SUFFIX
  GITWEB_DATA_CHECKOUT
  DOXYFILE
  OUTPUT_DIRECTORY
  ALLOW_ERASE_OUTPUT_DIRECTORY
  COMPILE_HTML_HELP
  RESULTING_HTML_HELP_FILE
  CREATE_HTML_TARZ_ARCHIVE
  RESULTING_HTML_TARZ_ARCHIVE_FILE
  DOWNLOAD_VTK_TAGFILE
  VTK_TAGFILE
  VTK_TAGFILE_REMOTE_DIR
  VTK_TAGFILE_DEST_DIR
  SOURCE_DIRECTORIES
)
  echo(${var})
endforeach()

# ----------------------------------------------------------------------------
# Convert the VTK headers to the Doxygen format.

step(1 "copy VTK headers to working directory")
foreach(var
  Accelerators
  Charts
  Common
  Documentation
  Domains
  Filters
  Geovis
  GUISupport
  Imaging
  Infovis
  Interaction
  IO
  Parallel
  Rendering
  Views
  Web
)
  file(COPY "${SOURCE_DIR}/${var}"
    DESTINATION "${INTERMEDIATE_DOX_DIR}"
    FILES_MATCHING PATTERN "*.h"
    )
endforeach()

# ----------------------------------------------------------------------------
# Build the Events invocation list.

step(2 "cross-reference classes to InvokeEvent callers")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_codematch.pl"
  --codematch "\\w(?:->|\\.)InvokeEvent\\s*\\(\\s*(vtkCommand::\\w+)[\\s,]"
  --label "Events"
  --project "${PROJECT_NAME}"
  --sectionmatch "^vtkCommand::(\\w)"
  --store "doc_${PROJECT_NAME}_events.dox"
  --title "Event to Classes"
  --sectionmatch2 "^vtk(\\w)"
  --store2 "doc_${PROJECT_NAME}_events2.dox"
  --title2 "Class to Events"
  --to "${INTERMEDIATE_DOX_DIR}"
  --unique "v"
  --relativeto "${SOURCE_DIR}/${REL_PATH_TO_TOP}"
  ${SOURCE_DIRECTORIES}
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Build the full-text index.

step(3 "build full text index")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_index.pl"
  --project "${PROJECT_NAME}"
  --stop  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_index.stop"
  --store "doc_${PROJECT_NAME}_index.dox"
  --to "${INTERMEDIATE_DOX_DIR}"
  ${SOURCE_DIRECTORIES}
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Extract the VTK version and create the main page.

step(4 "extract VTK version")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_version.pl"
  --version_file "${SOURCE_DIR}/${REL_PATH_TO_TOP}/CMake/vtkVersion.cmake"
  --logo "${PATH_TO_VTK_DOX_SCRIPTS}/vtk-logo.gif"
  --store "doc_${PROJECT_NAME}_version.dox"
  --to "${INTERMEDIATE_DOX_DIR}"
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Generate the 'Class to Examples' page cross-linking each class to these
# examples that use that class.

step(5 "cross-reference classes with Examples")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_class2example.pl"
  --baselinedir "${DATA_ROOT}/Baseline"
  --baselineicon "pic.gif"
  --baselinelink "${GITWEB_DATA_CHECKOUT}Baseline"
  --baselinelinksuffix "${GITWEB_DATA_SUFFIX}"
  --datamatch "\\W(VTK_DATA_ROOT|VTKData|(vtk)?GetDataRoot|ExpandDataFileName)\\W"
  --dataicon "paper-clip.gif"
  --dirmatch "^Examples$"
  --label "Examples"
  --link "${GITWEB_CHECKOUT}"
  --linksuffix "${GITWEB_SUFFIX}"
  --project "${PROJECT_NAME}"
  --store "doc_${PROJECT_NAME}_class2examples.dox"
  --title "Class To Examples"
  --to "${INTERMEDIATE_DOX_DIR}"
  --unique "e"
  --remove_leading_slash=1
  "${SOURCE_DIR}/${REL_PATH_TO_TOP}"
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Generate the 'Class to Tests' page cross-linking each class to these
# tests that use that class.

step(6 "cross-reference classes with Testing")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_class2example.pl"
  --baselinedir "${DATA_ROOT}/Baseline"
  --baselineicon "pic.gif"
  --baselinelink "${GITWEB_DATA_CHECKOUT}Baseline"
  --baselinelinksuffix "${GITWEB_DATA_SUFFIX}"
  --datamatch "\\W(VTK_DATA_ROOT|VTKData|(vtk)?GetDataRoot|ExpandDataFileName)\\W"
  --dataicon "paper-clip.gif"
  --dirmatch "^Testing$"
  --label "Tests"
  --link "${GITWEB_CHECKOUT}"
  --linksuffix "${GITWEB_SUFFIX}"
  --project "${PROJECT_NAME}"
  --store "doc_${PROJECT_NAME}_class2tests.dox"
  --title "Class To Tests"
  --to "${INTERMEDIATE_DOX_DIR}"
  --unique "t"
  --remove_leading_slash=1
  "${SOURCE_DIR}/${REL_PATH_TO_TOP}"
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Retrieve the remote VTK tag file.

step(7 "download VTK tag file")
if(DOWNLOAD_VTK_TAGFILE)
  if(NOT VTK_TAGFILE STREQUAL "")
    file(DOWNLOAD
      "${VTK_TAGFILE_REMOTE_DIR}/${VTK_TAGFILE}"
      "${VTK_TAGFILE_DEST_DIR}/${VTK_TAGFILE}"
      TIMEOUT 60
    )
    if(NOT EXISTS "${VTK_TAGFILE_DEST_DIR}/${VTK_TAGFILE}")
      message(STATUS "warning: VTK tag file did not download correctly")
    endif()
  endif()
endif()

# ----------------------------------------------------------------------------
# Create the Doxygen doc.

step(8 "run doxygen")
file(REMOVE_RECURSE "${OUTPUT_DIRECTORY}")
file(MAKE_DIRECTORY "${OUTPUT_DIRECTORY}")
execute_process(COMMAND ${DOXYGEN} ${DOXYFILE}
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Clean the HTML pages to remove the path to the intermediate Doxygen dir.

step(9 "remove intermediate path from html")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_rmpath.pl"
  --to "${INTERMEDIATE_DOX_DIR}"
  --html "${OUTPUT_DIRECTORY}/html"
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# clean the HTML pages to remove layout problems

step(10 "clean html to remove layout problems")
execute_process(COMMAND ${PERL}
  "${PATH_TO_VTK_DOX_SCRIPTS}/doc_cleanhtml.pl"
  --html "${OUTPUT_DIRECTORY}/html"
  RESULT_VARIABLE rv
)

# ----------------------------------------------------------------------------
# Create the *.chm file

step(11 "build *.chm file")
if(COMPILE_HTML_HELP AND HTML_HELP_COMPILER)
  if(NOT "${RESULTING_HTML_HELP_FILE}" STREQUAL "")
    if(EXISTS "${OUTPUT_DIRECTORY}/html/index.hhp")
      # hhc creates index.chm next to index.hhp
      execute_process(COMMAND ${HTML_HELP_COMPILER} index.hhp
        WORKING_DIRECTORY "${OUTPUT_DIRECTORY}/html"
        RESULT_VARIABLE rv
      )
    else()
      message(STATUS "warning: no index.hhp file, not running HTML Help Compiler...")
    endif()

    if(EXISTS "${OUTPUT_DIRECTORY}/html/index.chm")
      # copy it to where we want it
      execute_process(COMMAND ${CMAKE_COMMAND} -E copy
        "${OUTPUT_DIRECTORY}/html/index.chm"
        "${RESULTING_HTML_HELP_FILE}"
        RESULT_VARIABLE rv
      )

      # get rid of the one in the html dir
      file(REMOVE "${OUTPUT_DIRECTORY}/html/index.chm")
    else()
      message(STATUS "warning: no index.chm file, not moving to final location...")
    endif()
  endif()
endif()

# ----------------------------------------------------------------------------
# Create the *.tar.gz file

step(12 "build *.tar.gz file")
if(CREATE_HTML_TARZ_ARCHIVE)
  if(NOT RESULTING_HTML_TARZ_ARCHIVE_FILE STREQUAL "")
    execute_process(COMMAND ${CMAKE_COMMAND} -E tar cfz ${RESULTING_HTML_TARZ_ARCHIVE_FILE} html
      WORKING_DIRECTORY ${OUTPUT_DIRECTORY}
      RESULT_VARIABLE rv
    )
  endif()
endif()

# ----------------------------------------------------------------------------
# Clean-up.

if(DOXYGEN_KEEP_TEMP)
  message("Skipping step 13: clean up.")
else()
  step(13 "clean up")
  file(REMOVE_RECURSE "${INTERMEDIATE_DOX_DIR}")

  if(DOWNLOAD_VTK_TAGFILE)
    if(NOT VTK_TAGFILE STREQUAL "")
      file(REMOVE "${VTK_TAGFILE_DEST_DIR}/${VTK_TAGFILE}")
   endif()
  endif()

  if(COMPILE_HTML_HELP)
    if(NOT RESULTING_HTML_HELP_FILE STREQUAL "")
      if(ALLOW_ERASE_OUTPUT_DIRECTORY)
        file(REMOVE_RECURSE "${OUTPUT_DIRECTORY}")
      endif()
    endif()
  endif()
endif()

#
# If you add more steps, please update the step macro to reflect the total
# number of steps in the progressive build output... Thanks.
#
