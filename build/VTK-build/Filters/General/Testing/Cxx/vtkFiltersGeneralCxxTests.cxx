#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#if defined(_MSC_VER)
# pragma warning(disable:4996) /* deprecation */
#endif

#include "/home/schmittle/Documents/Vision_Learning/build/VTK/Testing/Rendering/vtkTestingObjectFactory.h"



/* Forward declare test functions. */
int ArrayExtractFactoredArray(int, char*[]);
int ArrayMatricizeArray(int, char*[]);
int ArrayNormalizeMatrixVectors(int, char*[]);
int CellTreeLocator(int, char*[]);
int TestPassArrays(int, char*[]);
int TestPassThrough(int, char*[]);
int TestTessellator(int, char*[]);
int expCos(int, char*[]);
int BoxClipPolyData(int, char*[]);
int BoxClipTetrahedra(int, char*[]);
int BoxClipTriangulateAndInterpolate(int, char*[]);
int BoxClipTriangulate(int, char*[]);
int TestAppendPoints(int, char*[]);
int TestBooleanOperationPolyDataFilter2(int, char*[]);
int TestBooleanOperationPolyDataFilter(int, char*[]);
int TestLoopBooleanPolyDataFilter(int, char*[]);
int TestContourTriangulatorCutter(int, char*[]);
int TestContourTriangulator(int, char*[]);
int TestContourTriangulatorMarching(int, char*[]);
int TestCountFaces(int, char*[]);
int TestCountVertices(int, char*[]);
int TestDeformPointSet(int, char*[]);
int TestDensifyPolyData(int, char*[]);
int TestDistancePolyDataFilter(int, char*[]);
int TestGraphWeightEuclideanDistanceFilter(int, char*[]);
int TestImageDataToPointSet(int, char*[]);
int TestIntersectionPolyDataFilter3(int, char*[]);
int TestIntersectionPolyDataFilter2(int, char*[]);
int TestIntersectionPolyDataFilter(int, char*[]);
int TestRectilinearGridToPointSet(int, char*[]);
int TestReflectionFilter(int, char*[]);
int TestSplitByCellScalarFilter(int, char*[]);
int TestTableSplitColumnComponents(int, char*[]);
int TestTransformFilter(int, char*[]);
int TestTransformPolyDataFilter(int, char*[]);
int TestUncertaintyTubeFilter(int, char*[]);
int UnitTestMultiThreshold(int, char*[]);
int BoxClipPointData(int, char*[]);
int BoxClipOrientedPointData(int, char*[]);
int TestDataSetGradient(int, char*[]);
int TestDataSetGradientPrecompute(int, char*[]);
int TestGradientAndVorticity(int, char*[]);
int TestIconGlyphFilterGravity(int, char*[]);
int TestQuadraturePoints(int, char*[]);
int TestYoungsMaterialInterface(int, char*[]);


/* Create map.  */

typedef int (*MainFuncPointer)(int , char*[]);
typedef struct
{
  const char* name;
  MainFuncPointer func;
} functionMapEntry;

static functionMapEntry cmakeGeneratedFunctionMapEntries[] = {
    {
    "ArrayExtractFactoredArray",
    ArrayExtractFactoredArray
  },
  {
    "ArrayMatricizeArray",
    ArrayMatricizeArray
  },
  {
    "ArrayNormalizeMatrixVectors",
    ArrayNormalizeMatrixVectors
  },
  {
    "CellTreeLocator",
    CellTreeLocator
  },
  {
    "TestPassArrays",
    TestPassArrays
  },
  {
    "TestPassThrough",
    TestPassThrough
  },
  {
    "TestTessellator",
    TestTessellator
  },
  {
    "expCos",
    expCos
  },
  {
    "BoxClipPolyData",
    BoxClipPolyData
  },
  {
    "BoxClipTetrahedra",
    BoxClipTetrahedra
  },
  {
    "BoxClipTriangulateAndInterpolate",
    BoxClipTriangulateAndInterpolate
  },
  {
    "BoxClipTriangulate",
    BoxClipTriangulate
  },
  {
    "TestAppendPoints",
    TestAppendPoints
  },
  {
    "TestBooleanOperationPolyDataFilter2",
    TestBooleanOperationPolyDataFilter2
  },
  {
    "TestBooleanOperationPolyDataFilter",
    TestBooleanOperationPolyDataFilter
  },
  {
    "TestLoopBooleanPolyDataFilter",
    TestLoopBooleanPolyDataFilter
  },
  {
    "TestContourTriangulatorCutter",
    TestContourTriangulatorCutter
  },
  {
    "TestContourTriangulator",
    TestContourTriangulator
  },
  {
    "TestContourTriangulatorMarching",
    TestContourTriangulatorMarching
  },
  {
    "TestCountFaces",
    TestCountFaces
  },
  {
    "TestCountVertices",
    TestCountVertices
  },
  {
    "TestDeformPointSet",
    TestDeformPointSet
  },
  {
    "TestDensifyPolyData",
    TestDensifyPolyData
  },
  {
    "TestDistancePolyDataFilter",
    TestDistancePolyDataFilter
  },
  {
    "TestGraphWeightEuclideanDistanceFilter",
    TestGraphWeightEuclideanDistanceFilter
  },
  {
    "TestImageDataToPointSet",
    TestImageDataToPointSet
  },
  {
    "TestIntersectionPolyDataFilter3",
    TestIntersectionPolyDataFilter3
  },
  {
    "TestIntersectionPolyDataFilter2",
    TestIntersectionPolyDataFilter2
  },
  {
    "TestIntersectionPolyDataFilter",
    TestIntersectionPolyDataFilter
  },
  {
    "TestRectilinearGridToPointSet",
    TestRectilinearGridToPointSet
  },
  {
    "TestReflectionFilter",
    TestReflectionFilter
  },
  {
    "TestSplitByCellScalarFilter",
    TestSplitByCellScalarFilter
  },
  {
    "TestTableSplitColumnComponents",
    TestTableSplitColumnComponents
  },
  {
    "TestTransformFilter",
    TestTransformFilter
  },
  {
    "TestTransformPolyDataFilter",
    TestTransformPolyDataFilter
  },
  {
    "TestUncertaintyTubeFilter",
    TestUncertaintyTubeFilter
  },
  {
    "UnitTestMultiThreshold",
    UnitTestMultiThreshold
  },
  {
    "BoxClipPointData",
    BoxClipPointData
  },
  {
    "BoxClipOrientedPointData",
    BoxClipOrientedPointData
  },
  {
    "TestDataSetGradient",
    TestDataSetGradient
  },
  {
    "TestDataSetGradientPrecompute",
    TestDataSetGradientPrecompute
  },
  {
    "TestGradientAndVorticity",
    TestGradientAndVorticity
  },
  {
    "TestIconGlyphFilterGravity",
    TestIconGlyphFilterGravity
  },
  {
    "TestQuadraturePoints",
    TestQuadraturePoints
  },
  {
    "TestYoungsMaterialInterface",
    TestYoungsMaterialInterface
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
