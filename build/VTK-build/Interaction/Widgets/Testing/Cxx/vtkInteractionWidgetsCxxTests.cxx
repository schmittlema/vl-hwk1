#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#if defined(_MSC_VER)
# pragma warning(disable:4996) /* deprecation */
#endif

#include "/home/schmittle/Documents/Vision_Learning/build/VTK/Testing/Rendering/vtkTestingObjectFactory.h"



/* Forward declare test functions. */
int BoxWidget(int, char*[]);
int BoxWidget2(int, char*[]);
int ImagePlaneWidget(int, char*[]);
int TerrainPolylineEditor(int, char*[]);
int TestAffineWidget(int, char*[]);
int TestAngleWidget2D(int, char*[]);
int TestAngleWidget3D(int, char*[]);
int TestBalloonWidget(int, char*[]);
int TestBiDimensionalWidget(int, char*[]);
int TestBorderWidget(int, char*[]);
int TestBrokenLineWidget(int, char*[]);
int TestCameraWidget(int, char*[]);
int TestCaptionWidget(int, char*[]);
int TestCellCentersPointPlacer(int, char*[]);
int TestCenteredSliderWidget2D(int, char*[]);
int TestCheckerboardWidget(int, char*[]);
int TestConstrainedHandleWidget(int, char*[]);
int TestContourWidget2(int, char*[]);
int TestDijkstraImageGeodesicPath(int, char*[]);
int TestDistanceWidget(int, char*[]);
int TestDistanceWidget3D(int, char*[]);
int TestFinitePlaneWidget(int, char*[]);
int TestFixedSizeHandleRepresentation3D(int, char*[]);
int TestFocalPlaneContour(int, char*[]);
int TestHandleWidget(int, char*[]);
int TestHandleWidget2D(int, char*[]);
int TestImageActorContourWidget(int, char*[]);
int TestImplicitCylinderWidget(int, char*[]);
int TestImplicitCylinderWidget2(int, char*[]);
int TestImplicitPlaneWidget(int, char*[]);
int TestImplicitPlaneWidget2(int, char*[]);
int TestImplicitPlaneWidget2LockNormalToCamera(int, char*[]);
int TestImplicitPlaneWidget2b(int, char*[]);
int TestImplicitPlaneWidget3(int, char*[]);
int TestLogoWidget(int, char*[]);
int TestLogoWidgetAlphaBlending(int, char*[]);
int TestLogoWidgetDepthPeeling(int, char*[]);
int TestMeasurementCubeHandleRepresentation3D(int, char*[]);
int TestMultipleViewports(int, char*[]);
int TestOrientationMarkerWidget(int, char*[]);
int TestOrientationMarkerWidget2(int, char*[]);
int TestOrthoPlanes(int, char*[]);
int TestParallelopipedWidget(int, char*[]);
int TestPickingManagerSeedWidget(int, char*[]);
int TestPlaybackWidget(int, char*[]);
int TestPointHandleRepresentation3D(int, char*[]);
int TestProgrammaticPlacement(int, char*[]);
int TestProgressBarWidget(int, char*[]);
int TestProp3DButtonRepresentation(int, char*[]);
int TestRectilinearWipeWidget(int, char*[]);
int TestResliceCursorWidget2(int, char*[]);
int TestResliceCursorWidget3(int, char*[]);
int TestScalarBarWidget(int, char*[]);
int TestSeedWidget(int, char*[]);
int TestSeedWidget2(int, char*[]);
int TestSeedWidgetNonUniformRepresentations(int, char*[]);
int TestSliderWidget(int, char*[]);
int TestSliderWidget2D(int, char*[]);
int TestSliderWidgetMultipleViewports(int, char*[]);
int TestSphereWidget2CenterCursor(int, char*[]);
int TestSphereWidgetZoomInOut(int, char*[]);
int TestSplineWidget(int, char*[]);
int TestTextWidget(int, char*[]);
int vtkAngleRepresentation2DTest1(int, char*[]);
int vtkAngleRepresentation3DTest1(int, char*[]);
int vtkAngleWidgetTest1(int, char*[]);
int vtkBalloonRepresentationTest1(int, char*[]);
int vtkBalloonWidgetTest1(int, char*[]);
int vtkBiDimensionalRepresentation2DTest1(int, char*[]);
int vtkBiDimensionalWidgetTest1(int, char*[]);
int vtkBorderWidgetTest1(int, char*[]);
int vtkCaptionRepresentationTest1(int, char*[]);
int vtkCaptionWidgetTest1(int, char*[]);
int vtkConstrainedPointHandleRepresentationTest1(int, char*[]);
int vtkHoverWidgetTest1(int, char*[]);
int vtkLineRepresentationTest1(int, char*[]);
int vtkLineWidget2Test1(int, char*[]);
int vtkPolyLineRepresentationTest1(int, char*[]);
int vtkPolyLineWidgetTest1(int, char*[]);
int vtkSeedRepresentationTest1(int, char*[]);
int vtkSeedWidgetTest1(int, char*[]);
int vtkSplineRepresentationTest1(int, char*[]);
int vtkSplineWidget2Test1(int, char*[]);
int vtkTextRepresentationTest1(int, char*[]);
int vtkTextWidgetTest1(int, char*[]);
int TestButtonWidget(int, char*[]);
int TestButtonWidgetMultipleViewports(int, char*[]);
int TestDijkstraGraphGeodesicPath(int, char*[]);
int TestLineWidget(int, char*[]);
int TestLineWidget2(int, char*[]);
int TestOrientedGlyphContour(int, char*[]);
int TestPlaneWidget(int, char*[]);
int TestPointWidget(int, char*[]);
int TestPolyPlane(int, char*[]);
int TestPolygonalHandleRepresentations(int, char*[]);
int TestPolygonalRepresentationHandleWidget(int, char*[]);
int TestPolygonalSurfaceConstrainedDistanceWidget(int, char*[]);
int TestSphereHandleWidget(int, char*[]);
int TestSurfaceConstrainedHandleWidget(int, char*[]);
int TestTensorProbeWidget(int, char*[]);
int TestImageTracerWidget(int, char*[]);
int TestPickingManagerWidgets(int, char*[]);


/* Create map.  */

typedef int (*MainFuncPointer)(int , char*[]);
typedef struct
{
  const char* name;
  MainFuncPointer func;
} functionMapEntry;

static functionMapEntry cmakeGeneratedFunctionMapEntries[] = {
    {
    "BoxWidget",
    BoxWidget
  },
  {
    "BoxWidget2",
    BoxWidget2
  },
  {
    "ImagePlaneWidget",
    ImagePlaneWidget
  },
  {
    "TerrainPolylineEditor",
    TerrainPolylineEditor
  },
  {
    "TestAffineWidget",
    TestAffineWidget
  },
  {
    "TestAngleWidget2D",
    TestAngleWidget2D
  },
  {
    "TestAngleWidget3D",
    TestAngleWidget3D
  },
  {
    "TestBalloonWidget",
    TestBalloonWidget
  },
  {
    "TestBiDimensionalWidget",
    TestBiDimensionalWidget
  },
  {
    "TestBorderWidget",
    TestBorderWidget
  },
  {
    "TestBrokenLineWidget",
    TestBrokenLineWidget
  },
  {
    "TestCameraWidget",
    TestCameraWidget
  },
  {
    "TestCaptionWidget",
    TestCaptionWidget
  },
  {
    "TestCellCentersPointPlacer",
    TestCellCentersPointPlacer
  },
  {
    "TestCenteredSliderWidget2D",
    TestCenteredSliderWidget2D
  },
  {
    "TestCheckerboardWidget",
    TestCheckerboardWidget
  },
  {
    "TestConstrainedHandleWidget",
    TestConstrainedHandleWidget
  },
  {
    "TestContourWidget2",
    TestContourWidget2
  },
  {
    "TestDijkstraImageGeodesicPath",
    TestDijkstraImageGeodesicPath
  },
  {
    "TestDistanceWidget",
    TestDistanceWidget
  },
  {
    "TestDistanceWidget3D",
    TestDistanceWidget3D
  },
  {
    "TestFinitePlaneWidget",
    TestFinitePlaneWidget
  },
  {
    "TestFixedSizeHandleRepresentation3D",
    TestFixedSizeHandleRepresentation3D
  },
  {
    "TestFocalPlaneContour",
    TestFocalPlaneContour
  },
  {
    "TestHandleWidget",
    TestHandleWidget
  },
  {
    "TestHandleWidget2D",
    TestHandleWidget2D
  },
  {
    "TestImageActorContourWidget",
    TestImageActorContourWidget
  },
  {
    "TestImplicitCylinderWidget",
    TestImplicitCylinderWidget
  },
  {
    "TestImplicitCylinderWidget2",
    TestImplicitCylinderWidget2
  },
  {
    "TestImplicitPlaneWidget",
    TestImplicitPlaneWidget
  },
  {
    "TestImplicitPlaneWidget2",
    TestImplicitPlaneWidget2
  },
  {
    "TestImplicitPlaneWidget2LockNormalToCamera",
    TestImplicitPlaneWidget2LockNormalToCamera
  },
  {
    "TestImplicitPlaneWidget2b",
    TestImplicitPlaneWidget2b
  },
  {
    "TestImplicitPlaneWidget3",
    TestImplicitPlaneWidget3
  },
  {
    "TestLogoWidget",
    TestLogoWidget
  },
  {
    "TestLogoWidgetAlphaBlending",
    TestLogoWidgetAlphaBlending
  },
  {
    "TestLogoWidgetDepthPeeling",
    TestLogoWidgetDepthPeeling
  },
  {
    "TestMeasurementCubeHandleRepresentation3D",
    TestMeasurementCubeHandleRepresentation3D
  },
  {
    "TestMultipleViewports",
    TestMultipleViewports
  },
  {
    "TestOrientationMarkerWidget",
    TestOrientationMarkerWidget
  },
  {
    "TestOrientationMarkerWidget2",
    TestOrientationMarkerWidget2
  },
  {
    "TestOrthoPlanes",
    TestOrthoPlanes
  },
  {
    "TestParallelopipedWidget",
    TestParallelopipedWidget
  },
  {
    "TestPickingManagerSeedWidget",
    TestPickingManagerSeedWidget
  },
  {
    "TestPlaybackWidget",
    TestPlaybackWidget
  },
  {
    "TestPointHandleRepresentation3D",
    TestPointHandleRepresentation3D
  },
  {
    "TestProgrammaticPlacement",
    TestProgrammaticPlacement
  },
  {
    "TestProgressBarWidget",
    TestProgressBarWidget
  },
  {
    "TestProp3DButtonRepresentation",
    TestProp3DButtonRepresentation
  },
  {
    "TestRectilinearWipeWidget",
    TestRectilinearWipeWidget
  },
  {
    "TestResliceCursorWidget2",
    TestResliceCursorWidget2
  },
  {
    "TestResliceCursorWidget3",
    TestResliceCursorWidget3
  },
  {
    "TestScalarBarWidget",
    TestScalarBarWidget
  },
  {
    "TestSeedWidget",
    TestSeedWidget
  },
  {
    "TestSeedWidget2",
    TestSeedWidget2
  },
  {
    "TestSeedWidgetNonUniformRepresentations",
    TestSeedWidgetNonUniformRepresentations
  },
  {
    "TestSliderWidget",
    TestSliderWidget
  },
  {
    "TestSliderWidget2D",
    TestSliderWidget2D
  },
  {
    "TestSliderWidgetMultipleViewports",
    TestSliderWidgetMultipleViewports
  },
  {
    "TestSphereWidget2CenterCursor",
    TestSphereWidget2CenterCursor
  },
  {
    "TestSphereWidgetZoomInOut",
    TestSphereWidgetZoomInOut
  },
  {
    "TestSplineWidget",
    TestSplineWidget
  },
  {
    "TestTextWidget",
    TestTextWidget
  },
  {
    "vtkAngleRepresentation2DTest1",
    vtkAngleRepresentation2DTest1
  },
  {
    "vtkAngleRepresentation3DTest1",
    vtkAngleRepresentation3DTest1
  },
  {
    "vtkAngleWidgetTest1",
    vtkAngleWidgetTest1
  },
  {
    "vtkBalloonRepresentationTest1",
    vtkBalloonRepresentationTest1
  },
  {
    "vtkBalloonWidgetTest1",
    vtkBalloonWidgetTest1
  },
  {
    "vtkBiDimensionalRepresentation2DTest1",
    vtkBiDimensionalRepresentation2DTest1
  },
  {
    "vtkBiDimensionalWidgetTest1",
    vtkBiDimensionalWidgetTest1
  },
  {
    "vtkBorderWidgetTest1",
    vtkBorderWidgetTest1
  },
  {
    "vtkCaptionRepresentationTest1",
    vtkCaptionRepresentationTest1
  },
  {
    "vtkCaptionWidgetTest1",
    vtkCaptionWidgetTest1
  },
  {
    "vtkConstrainedPointHandleRepresentationTest1",
    vtkConstrainedPointHandleRepresentationTest1
  },
  {
    "vtkHoverWidgetTest1",
    vtkHoverWidgetTest1
  },
  {
    "vtkLineRepresentationTest1",
    vtkLineRepresentationTest1
  },
  {
    "vtkLineWidget2Test1",
    vtkLineWidget2Test1
  },
  {
    "vtkPolyLineRepresentationTest1",
    vtkPolyLineRepresentationTest1
  },
  {
    "vtkPolyLineWidgetTest1",
    vtkPolyLineWidgetTest1
  },
  {
    "vtkSeedRepresentationTest1",
    vtkSeedRepresentationTest1
  },
  {
    "vtkSeedWidgetTest1",
    vtkSeedWidgetTest1
  },
  {
    "vtkSplineRepresentationTest1",
    vtkSplineRepresentationTest1
  },
  {
    "vtkSplineWidget2Test1",
    vtkSplineWidget2Test1
  },
  {
    "vtkTextRepresentationTest1",
    vtkTextRepresentationTest1
  },
  {
    "vtkTextWidgetTest1",
    vtkTextWidgetTest1
  },
  {
    "TestButtonWidget",
    TestButtonWidget
  },
  {
    "TestButtonWidgetMultipleViewports",
    TestButtonWidgetMultipleViewports
  },
  {
    "TestDijkstraGraphGeodesicPath",
    TestDijkstraGraphGeodesicPath
  },
  {
    "TestLineWidget",
    TestLineWidget
  },
  {
    "TestLineWidget2",
    TestLineWidget2
  },
  {
    "TestOrientedGlyphContour",
    TestOrientedGlyphContour
  },
  {
    "TestPlaneWidget",
    TestPlaneWidget
  },
  {
    "TestPointWidget",
    TestPointWidget
  },
  {
    "TestPolyPlane",
    TestPolyPlane
  },
  {
    "TestPolygonalHandleRepresentations",
    TestPolygonalHandleRepresentations
  },
  {
    "TestPolygonalRepresentationHandleWidget",
    TestPolygonalRepresentationHandleWidget
  },
  {
    "TestPolygonalSurfaceConstrainedDistanceWidget",
    TestPolygonalSurfaceConstrainedDistanceWidget
  },
  {
    "TestSphereHandleWidget",
    TestSphereHandleWidget
  },
  {
    "TestSurfaceConstrainedHandleWidget",
    TestSurfaceConstrainedHandleWidget
  },
  {
    "TestTensorProbeWidget",
    TestTensorProbeWidget
  },
  {
    "TestImageTracerWidget",
    TestImageTracerWidget
  },
  {
    "TestPickingManagerWidgets",
    TestPickingManagerWidgets
  },

  {0,0}
};

/* Allocate and create a lowercased copy of string
   (note that it has to be free'd manually) */

static char* lowercase(const char *string)
{
  char *new_string, *p;

#ifdef __cplusplus
  new_string = static_cast<char *>(malloc(sizeof(char) *
    static_cast<size_t>(strlen(string) + 1)));
#else
  new_string = (char *)(malloc(sizeof(char) * (size_t)(strlen(string) + 1)));
#endif

  if (!new_string)
    {
    return 0;
    }
  strcpy(new_string, string);
  p = new_string;
  while (*p != 0)
    {
#ifdef __cplusplus
    *p = static_cast<char>(tolower(*p));
#else
    *p = (char)(tolower(*p));
#endif

    ++p;
    }
  return new_string;
}

int main(int ac, char *av[])
{
  int i, NumTests, testNum = 0, partial_match;
  char *arg, *test_name;
  int count;
  int testToRun = -1;

  

  for(count =0; cmakeGeneratedFunctionMapEntries[count].name != 0; count++)
    {
    }
  NumTests = count;
  /* If no test name was given */
  /* process command line with user function.  */
  if (ac < 2)
    {
    /* Ask for a test.  */
    printf("Available tests:\n");
    for (i =0; i < NumTests; ++i)
      {
      printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
      }
    printf("To run a test, enter the test number: ");
    fflush(stdout);
    if( scanf("%d", &testNum) != 1 )
      {
      printf("Couldn't parse that input as a number\n");
      return -1;
      }
    if (testNum >= NumTests)
      {
      printf("%3d is an invalid test number.\n", testNum);
      return -1;
      }
    testToRun = testNum;
    ac--;
    av++;
    }
  partial_match = 0;
  arg = 0;
  /* If partial match is requested.  */
  if(testToRun == -1 && ac > 1)
    {
    partial_match = (strcmp(av[1], "-R") == 0) ? 1 : 0;
    }
  if (partial_match && ac < 3)
    {
    printf("-R needs an additional parameter.\n");
    return -1;
    }
  if(testToRun == -1)
    {
    arg = lowercase(av[1 + partial_match]);
    }
  for (i =0; i < NumTests && testToRun == -1; ++i)
    {
    test_name = lowercase(cmakeGeneratedFunctionMapEntries[i].name);
    if (partial_match && strstr(test_name, arg) != NULL)
      {
      testToRun = i;
      ac -=2;
      av += 2;
      }
    else if (!partial_match && strcmp(test_name, arg) == 0)
      {
      testToRun = i;
      ac--;
      av++;
      }
    free(test_name);
    }
  if(arg)
    {
    free(arg);
    }
  if(testToRun != -1)
    {
    int result;
    vtksys::SystemInformation::SetStackTraceOnError(1);
 
    // Set defaults
    vtkTestingInteractor::ValidBaseline = "Use_-V_for_Baseline";
    vtkTestingInteractor::TempDirectory =
      std::string("/home/schmittle/Documents/Vision_Learning/build/VTK-build/Testing/Temporary");
    vtkTestingInteractor::DataDirectory = std::string("Use_-D_for_Data");

    int interactive = 0;
    for (int ii = 0; ii < ac; ++ii)
      {
      if (strcmp(av[ii], "-I") == 0)
        {
        interactive = 1;
        continue;
        }
      if (strcmp(av[ii], "-V") == 0 && ii < ac-1)
        {
        vtkTestingInteractor::ValidBaseline = std::string(av[++ii]);
        continue;
        }
      if (strcmp(av[ii], "-T") == 0 && ii < ac-1)
        {
        vtkTestingInteractor::TempDirectory = std::string(av[++ii]);
        continue;
        }
      if (strcmp(av[ii], "-D") == 0 && ii < ac-1)
        {
        vtkTestingInteractor::DataDirectory = std::string(av[++ii]);
        continue;
        }
      if (strcmp(av[ii], "-E") == 0 && ii < ac-1)
        {
        vtkTestingInteractor::ErrorThreshold =
            static_cast<double>(atof(av[++ii]));
        continue;
        }
      }
    vtkSmartPointer<vtkTestingObjectFactory> factory = vtkSmartPointer<vtkTestingObjectFactory>::New();
    if (!interactive)
      {
      // Disable any other overrides before registering our factory.
      vtkObjectFactoryCollection *collection = vtkObjectFactory::GetRegisteredFactories();
      collection->InitTraversal();
      vtkObjectFactory *f = collection->GetNextItem();
      while (f)
        {
        f->Disable("vtkRenderWindowInteractor");
        f = collection->GetNextItem();
        }
      vtkObjectFactory::RegisterFactory(factory);
      }

    if (testToRun < 0 || testToRun >= NumTests)
      {
      printf(
        "testToRun was modified by TestDriver code to an invalid value: %3d.\n",
        testNum);
      return -1;
      }
    result = (*cmakeGeneratedFunctionMapEntries[testToRun].func)(ac, av);

   if (result == VTK_SKIP_RETURN_CODE)
     {
     printf("Unsupported runtime configuration: Test returned "
            "VTK_SKIP_RETURN_CODE. Skipping test.\n");
     return result;
     }

   if (!interactive)
     {
     if (vtkTestingInteractor::TestReturnStatus != -1)
        {
        if (vtkTestingInteractor::TestReturnStatus != vtkTesting::PASSED)
          {
          result = EXIT_FAILURE;
          }
        else
          {
          result = EXIT_SUCCESS;
          }
        }
      vtkObjectFactory::UnRegisterFactory(factory);
      }

    return result;
    }


  /* Nothing was run, display the test names.  */
  printf("Available tests:\n");
  for (i =0; i < NumTests; ++i)
    {
    printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
    }
  printf("Failed: %s is an invalid test name.\n", av[1]);

  return -1;
}
