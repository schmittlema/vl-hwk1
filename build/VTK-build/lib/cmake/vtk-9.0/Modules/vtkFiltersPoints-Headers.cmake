set(vtkFiltersPoints_HEADERS_LOADED 1)
set(vtkFiltersPoints_HEADERS "vtkBoundedPointSource;vtkConnectedPointsFilter;vtkDensifyPointCloudFilter;vtkEllipsoidalGaussianKernel;vtkEuclideanClusterExtraction;vtkExtractHierarchicalBins;vtkExtractEnclosedPoints;vtkExtractPointCloudPiece;vtkExtractPoints;vtkExtractSurface;vtkFitImplicitFunction;vtkGaussianKernel;vtkGeneralizedKernel;vtkHierarchicalBinningFilter;vtkInterpolationKernel;vtkLinearKernel;vtkMaskPointsFilter;vtkPCACurvatureEstimation;vtkPCANormalEstimation;vtkPointCloudFilter;vtkPointDensityFilter;vtkPointInterpolator;vtkPointInterpolator2D;vtkPointOccupancyFilter;vtkProbabilisticVoronoiKernel;vtkRadiusOutlierRemoval;vtkSPHInterpolator;vtkSPHCubicKernel;vtkSPHKernel;vtkSPHQuarticKernel;vtkSPHQuinticKernel;vtkShepardKernel;vtkSignedDistance;vtkStatisticalOutlierRemoval;vtkUnsignedDistance;vtkVoxelGrid;vtkVoronoiKernel;vtkWendlandQuinticKernel")

foreach(header ${vtkFiltersPoints_HEADERS})
  set(vtkFiltersPoints_HEADER_${header}_EXISTS 1)
endforeach()
