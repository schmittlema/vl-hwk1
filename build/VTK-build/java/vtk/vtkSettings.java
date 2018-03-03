package vtk;

import java.util.Properties;
import java.util.StringTokenizer;

public class vtkSettings
{
  private static String GetVTKBuildLibDir() { return "/home/schmittle/Documents/Vision_Learning/build/VTK-build/lib"; }
  private static String GetVTKInstallLibDir() { return "/usr/local/HDF_Group/HDF5/1.10.1/"; }

  private static String[] Split(String str, String sep)
    {
    StringTokenizer st = new StringTokenizer(str, sep);
    int size = st.countTokens();
    String[] res = new String[size];
    int cnt = 0;
    while (st.hasMoreTokens())
      {
      res[cnt] = st.nextToken();
      cnt ++;
      }
    return res;
    }

  public static String GetVTKLibraryDir()
    {
    String lpath = null;
    Properties p = System.getProperties();
    String path_separator = p.getProperty("path.separator");
    String s = p.getProperty("java.class.path");
    String[] paths = vtkSettings.Split(s, path_separator);
    int cc;
    for ( cc = 0; cc < paths.length; cc ++ )
      {
      if ( paths[cc].endsWith("vtk.jar") )
        {
        lpath = paths[cc].substring(0, paths[cc].length()-"vtk.jar".length()-1);
        }
      }
    if ( lpath == null )
      {
      lpath = vtkSettings.GetVTKInstallLibDir();
      }
    return lpath;
    }

  public static String[] GetKits()
    {
    return vtkSettings.Split("CommonCore;CommonMath;CommonMisc;CommonSystem;CommonTransforms;CommonDataModel;CommonColor;CommonExecutionModel;CommonComputationalGeometry;FiltersCore;FiltersGeneral;ImagingCore;ImagingFourier;FiltersStatistics;FiltersExtraction;InfovisCore;FiltersGeometry;FiltersSources;RenderingCore;RenderingFreeType;RenderingContext2D;ChartsCore;IOCore;IOLegacy;IOXMLParser;IOXML;IOInfovis;RenderingOpenGL2;RenderingContextOpenGL2;IOImage;TestingRendering;ImagingSources;FiltersHybrid;FiltersModeling;ImagingColor;ImagingGeneral;ImagingHybrid;InteractionStyle;RenderingAnnotation;RenderingVolume;InteractionWidgets;ViewsCore;ViewsContext2D;FiltersProgrammable;FiltersVerdict;FiltersGeneric;IOGeometry;DomainsChemistry;DomainsChemistryOpenGL2;ParallelCore;FiltersAMR;IOAMR;IOExodus;ImagingMath;RenderingVolumeOpenGL2;FiltersFlowPaths;FiltersImaging;RenderingLabel;FiltersHyperTree;ImagingStencil;FiltersParallel;ParallelMPI;FiltersParallelDIY2;FiltersParallelGeometry;IONetCDF;IOParallel;IOParallelXML;FiltersParallelImaging;FiltersParallelMPI;FiltersParallelVerdict;FiltersPoints;PythonInterpreter;FiltersSMP;FiltersSelection;FiltersTexture;FiltersTopology;InfovisLayout;GeovisCore;ViewsInfovis;ViewsGeovis;IOEnSight;RenderingGL2PSOpenGL2;IOExport;IOExportOpenGL2;InteractionImage;IOImport;IOLSDyna;IOMINC;IOMPIImage;IOMPIParallel;IOMovie;IOPLY;IOParallelNetCDF;IOSQL;IOTecplotTable;IOVideo;ImagingStatistics;RenderingImage;ImagingMorphological;RenderingLOD;WebGLExporter;WebCore", ";");
    }
}
