set(vtkFiltersParallelDIY2_HEADERS_LOADED 1)
set(vtkFiltersParallelDIY2_HEADERS "vtkPResampleToImage;vtkPResampleWithDataSet;vtkFiltersParallelDIY2ObjectFactory")

foreach(header ${vtkFiltersParallelDIY2_HEADERS})
  set(vtkFiltersParallelDIY2_HEADER_${header}_EXISTS 1)
endforeach()
