set(vtkImagingGeneral_HEADERS_LOADED 1)
set(vtkImagingGeneral_HEADERS "vtkImageAnisotropicDiffusion2D;vtkImageAnisotropicDiffusion3D;vtkImageCheckerboard;vtkImageCityBlockDistance;vtkImageConvolve;vtkImageCorrelation;vtkImageEuclideanDistance;vtkImageEuclideanToPolar;vtkImageGaussianSmooth;vtkImageGradient;vtkImageGradientMagnitude;vtkImageHybridMedian2D;vtkImageLaplacian;vtkImageMedian3D;vtkImageNormalize;vtkImageRange3D;vtkImageSeparableConvolution;vtkImageSobel2D;vtkImageSobel3D;vtkImageSpatialAlgorithm;vtkImageVariance3D;vtkSimpleImageFilterExample;vtkImageSlab;vtkImageSlabReslice")

foreach(header ${vtkImagingGeneral_HEADERS})
  set(vtkImagingGeneral_HEADER_${header}_EXISTS 1)
endforeach()
