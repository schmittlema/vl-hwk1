set(vtkIOMPIImage_HEADERS_LOADED 1)
set(vtkIOMPIImage_HEADERS "vtkPNrrdReader;vtkMPIImageReader;vtkIOMPIImageObjectFactory")

foreach(header ${vtkIOMPIImage_HEADERS})
  set(vtkIOMPIImage_HEADER_${header}_EXISTS 1)
endforeach()
