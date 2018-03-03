set(vtkParallelMPI_LOADED 1)
set(vtkParallelMPI_DEPENDS "vtkCommonCore;vtkCommonDataModel;vtkParallelCore")
set(vtkParallelMPI_LIBRARIES "vtkParallelMPI")
set(vtkParallelMPI_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-9.0;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include;/usr/lib/openmpi/include;/usr/lib/openmpi/include/openmpi")
set(vtkParallelMPI_LIBRARY_DIRS "")
set(vtkParallelMPI_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtkParallelMPI_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkParallelMPIHierarchy.txt")
set(vtkParallelMPI_KIT "vtkParallel")
set(vtkParallelMPI_TARGETS_FILE "")


