set(vtkRenderingVolumeOpenGL2_HEADERS_LOADED 1)
set(vtkRenderingVolumeOpenGL2_HEADERS "vtkMultiBlockVolumeMapper;vtkOpenGLGPUVolumeRayCastMapper;vtkOpenGLProjectedTetrahedraMapper;vtkOpenGLRayCastImageDisplayHelper;vtkSmartVolumeMapper;vtkVolumeTexture;vtkVolumeInputHelper;vtkOpenGLVolumeRGBTable;vtkOpenGLVolumeOpacityTable;vtkOpenGLVolumeGradientOpacityTable;vtkOpenGLTransferFunction2D;vtkRenderingVolumeOpenGL2ObjectFactory")

foreach(header ${vtkRenderingVolumeOpenGL2_HEADERS})
  set(vtkRenderingVolumeOpenGL2_HEADER_${header}_EXISTS 1)
endforeach()
