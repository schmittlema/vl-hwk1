set(vtkFiltersParallel_HEADERS_LOADED 1)
set(vtkFiltersParallel_HEADERS "vtkAggregateDataSetFilter;vtkAngularPeriodicFilter;vtkCollectGraph;vtkCollectPolyData;vtkCollectTable;vtkCutMaterial;vtkDuplicatePolyData;vtkExtractCTHPart;vtkExtractPolyDataPiece;vtkExtractUnstructuredGridPiece;vtkExtractUserDefinedPiece;vtkPassThroughFilter;vtkPCellDataToPointData;vtkPConnectivityFilter;vtkPeriodicFilter;vtkPExtractDataArraysOverTime;vtkPExtractSelectedArraysOverTime;vtkPieceRequestFilter;vtkPieceScalars;vtkPipelineSize;vtkPKdTree;vtkPLinearExtrusionFilter;vtkPMaskPoints;vtkPOutlineCornerFilter;vtkPOutlineFilter;vtkPOutlineFilterInternals;vtkPPolyDataNormals;vtkPProbeFilter;vtkPProjectSphereFilter;vtkPReflectionFilter;vtkPResampleFilter;vtkProcessIdScalars;vtkPSphereSource;vtkPYoungsMaterialInterface;vtkRectilinearGridOutlineFilter;vtkRemoveGhosts;vtkTransmitPolyDataPiece;vtkTransmitRectilinearGridPiece;vtkTransmitStructuredDataPiece;vtkTransmitStructuredGridPiece;vtkTransmitUnstructuredGridPiece;vtkPExtractArraysOverTime")

foreach(header ${vtkFiltersParallel_HEADERS})
  set(vtkFiltersParallel_HEADER_${header}_EXISTS 1)
endforeach()
