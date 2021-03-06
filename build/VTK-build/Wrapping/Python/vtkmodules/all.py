""" This module loads the entire VTK library into its namespace.  It
also allows one to use specific packages inside the vtk directory.."""

from __future__ import absolute_import

# --------------------------------------
from .vtkCommonCore import *
from .vtkCommonMath import *
from .vtkCommonMisc import *
from .vtkCommonSystem import *
from .vtkCommonTransforms import *
from .vtkCommonDataModel import *
from .vtkCommonColor import *
from .vtkCommonExecutionModel import *
from .vtkCommonComputationalGeometry import *
from .vtkFiltersCore import *
from .vtkFiltersGeneral import *
from .vtkImagingCore import *
from .vtkImagingFourier import *
from .vtkFiltersStatistics import *
from .vtkFiltersExtraction import *
from .vtkInfovisCore import *
from .vtkFiltersGeometry import *
from .vtkFiltersSources import *
from .vtkRenderingCore import *
from .vtkRenderingFreeType import *
from .vtkRenderingContext2D import *
from .vtkChartsCore import *
from .vtkIOCore import *
from .vtkIOLegacy import *
from .vtkIOXMLParser import *
from .vtkIOXML import *
from .vtkIOInfovis import *
from .vtkRenderingOpenGL2 import *
from .vtkRenderingContextOpenGL2 import *
from .vtkIOImage import *
from .vtkTestingRendering import *
from .vtkImagingSources import *
from .vtkFiltersHybrid import *
from .vtkFiltersModeling import *
from .vtkImagingColor import *
from .vtkImagingGeneral import *
from .vtkImagingHybrid import *
from .vtkInteractionStyle import *
from .vtkRenderingAnnotation import *
from .vtkRenderingVolume import *
from .vtkInteractionWidgets import *
from .vtkViewsCore import *
from .vtkViewsContext2D import *
from .vtkFiltersProgrammable import *
from .vtkFiltersVerdict import *
from .vtkFiltersGeneric import *
from .vtkIOGeometry import *
from .vtkDomainsChemistry import *
from .vtkDomainsChemistryOpenGL2 import *
from .vtkParallelCore import *
from .vtkFiltersAMR import *
from .vtkIOAMR import *
from .vtkIOExodus import *
from .vtkImagingMath import *
from .vtkRenderingVolumeOpenGL2 import *
from .vtkFiltersFlowPaths import *
from .vtkFiltersImaging import *
from .vtkRenderingLabel import *
from .vtkFiltersHyperTree import *
from .vtkImagingStencil import *
from .vtkFiltersParallel import *
from .vtkParallelMPI import *
from .vtkFiltersParallelDIY2 import *
from .vtkFiltersParallelGeometry import *
from .vtkIONetCDF import *
from .vtkIOParallel import *
from .vtkIOParallelXML import *
from .vtkFiltersParallelImaging import *
from .vtkFiltersParallelMPI import *
from .vtkFiltersParallelVerdict import *
from .vtkFiltersPoints import *
from .vtkPythonInterpreter import *
from .vtkFiltersPython import *
from .vtkFiltersSMP import *
from .vtkFiltersSelection import *
from .vtkFiltersTexture import *
from .vtkFiltersTopology import *
from .vtkInfovisLayout import *
from .vtkGeovisCore import *
from .vtkViewsInfovis import *
from .vtkViewsGeovis import *
from .vtkIOEnSight import *
from .vtkRenderingGL2PSOpenGL2 import *
from .vtkIOExport import *
from .vtkIOExportOpenGL2 import *
from .vtkInteractionImage import *
from .vtkIOImport import *
from .vtkIOLSDyna import *
from .vtkIOMINC import *
from .vtkIOMPIImage import *
from .vtkIOMPIParallel import *
from .vtkIOMovie import *
from .vtkIOPLY import *
from .vtkIOParallelNetCDF import *
from .vtkIOSQL import *
from .vtkIOTecplotTable import *
from .vtkIOVideo import *
from .vtkImagingStatistics import *
from .vtkRenderingImage import *
from .vtkImagingMorphological import *
from .vtkRenderingLOD import *
from .vtkParallelMPI4Py import *
from .vtkWebGLExporter import *
from .vtkWebCore import *
# --------------------------------------

# useful macro for getting type names
from .util.vtkConstants import vtkImageScalarTypeNameMacro

# import convenience decorators
from .util.misc import calldata_type

# import the vtkVariant helpers
from .util.vtkVariant import *
