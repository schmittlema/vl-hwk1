set(vtkIOMPIParallel_HEADERS_LOADED 1)
set(vtkIOMPIParallel_HEADERS "vtkPWindBladeReader;vtkMPIMultiBlockPLOT3DReader;vtkIOMPIParallelObjectFactory")

foreach(header ${vtkIOMPIParallel_HEADERS})
  set(vtkIOMPIParallel_HEADER_${header}_EXISTS 1)
endforeach()
