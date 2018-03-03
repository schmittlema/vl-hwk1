set(vtkParallelMPI4Py_LOADED 1)
set(vtkParallelMPI4Py_DEPENDS "vtkCommonCore;vtkParallelMPI;vtkParallelMPI;vtkPython;vtkPython;vtkmpi4py")
set(vtkParallelMPI4Py_LIBRARIES "vtkParallelMPI4Py")
set(vtkParallelMPI4Py_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-9.0;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include;/usr/lib/openmpi/include;/usr/lib/openmpi/include/openmpi")
set(vtkParallelMPI4Py_LIBRARY_DIRS "")
set(vtkParallelMPI4Py_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtkParallelMPI4Py_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkParallelMPI4PyHierarchy.txt")
set(vtkParallelMPI4Py_KIT "vtkWrapping")
set(vtkParallelMPI4Py_TARGETS_FILE "")


