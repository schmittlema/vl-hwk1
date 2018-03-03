package vtk;

import java.io.File;

/**
 * Enum used to load native library more easily. If you don't want to set the
 * specific environment variable you can provide the path of the directory that
 * contains the VTK library through a Java Property. Like in the following
 * command line:
 *
 * > java -cp vtk.jar -Dvtk.lib.dir=.../vtk-libs vtk.sample.SimpleVTK
 *
 * The directory .../vtk-libs must contain the so/dll/dylib + the jnilib files
 *
 * @author sebastien jourdain - sebastien.jourdain@kitware.com
 */
public enum vtkNativeLibrary {

    VTKACCELERATORSVTKM("vtkAcceleratorsVTKmJava", false),
    VTKCHARTSCORE("vtkChartsCoreJava", true),
    VTKCOMMONCOLOR("vtkCommonColorJava", true),
    VTKCOMMONCOMPUTATIONALGEOMETRY("vtkCommonComputationalGeometryJava", true),
    VTKCOMMONCORE("vtkCommonCoreJava", true),
    VTKCOMMONDATAMODEL("vtkCommonDataModelJava", true),
    VTKCOMMONEXECUTIONMODEL("vtkCommonExecutionModelJava", true),
    VTKCOMMONMATH("vtkCommonMathJava", true),
    VTKCOMMONMISC("vtkCommonMiscJava", true),
    VTKCOMMONSYSTEM("vtkCommonSystemJava", true),
    VTKCOMMONTRANSFORMS("vtkCommonTransformsJava", true),
    VTKDOMAINSCHEMISTRY("vtkDomainsChemistryJava", true),
    VTKDOMAINSCHEMISTRYOPENGL2("vtkDomainsChemistryOpenGL2Java", true),
    VTKDOMAINSMICROSCOPY("vtkDomainsMicroscopyJava", false),
    VTKFILTERSAMR("vtkFiltersAMRJava", true),
    VTKFILTERSCORE("vtkFiltersCoreJava", true),
    VTKFILTERSEXTRACTION("vtkFiltersExtractionJava", true),
    VTKFILTERSFLOWPATHS("vtkFiltersFlowPathsJava", true),
    VTKFILTERSGENERAL("vtkFiltersGeneralJava", true),
    VTKFILTERSGENERIC("vtkFiltersGenericJava", true),
    VTKFILTERSGEOMETRY("vtkFiltersGeometryJava", true),
    VTKFILTERSHYBRID("vtkFiltersHybridJava", true),
    VTKFILTERSHYPERTREE("vtkFiltersHyperTreeJava", true),
    VTKFILTERSIMAGING("vtkFiltersImagingJava", true),
    VTKFILTERSMODELING("vtkFiltersModelingJava", true),
    VTKFILTERSMOMENTINVARIANTS("vtkFiltersMomentInvariantsJava", false),
    VTKFILTERSOPENTURNS("vtkFiltersOpenTurnsJava", false),
    VTKFILTERSPARALLEL("vtkFiltersParallelJava", true),
    VTKFILTERSPARALLELDIY2("vtkFiltersParallelDIY2Java", true),
    VTKFILTERSPARALLELFLOWPATHS("vtkFiltersParallelFlowPathsJava", false),
    VTKFILTERSPARALLELGEOMETRY("vtkFiltersParallelGeometryJava", true),
    VTKFILTERSPARALLELIMAGING("vtkFiltersParallelImagingJava", true),
    VTKFILTERSPARALLELMPI("vtkFiltersParallelMPIJava", true),
    VTKFILTERSPARALLELSTATISTICS("vtkFiltersParallelStatisticsJava", false),
    VTKFILTERSPARALLELVERDICT("vtkFiltersParallelVerdictJava", true),
    VTKFILTERSPOINTS("vtkFiltersPointsJava", true),
    VTKFILTERSPROGRAMMABLE("vtkFiltersProgrammableJava", true),
    VTKFILTERSPYTHON("vtkFiltersPythonJava", true),
    VTKFILTERSREEBGRAPH("vtkFiltersReebGraphJava", false),
    VTKFILTERSSMP("vtkFiltersSMPJava", true),
    VTKFILTERSSELECTION("vtkFiltersSelectionJava", true),
    VTKFILTERSSOURCES("vtkFiltersSourcesJava", true),
    VTKFILTERSSTATISTICS("vtkFiltersStatisticsJava", true),
    VTKFILTERSTEXTURE("vtkFiltersTextureJava", true),
    VTKFILTERSTOPOLOGY("vtkFiltersTopologyJava", true),
    VTKFILTERSVERDICT("vtkFiltersVerdictJava", true),
    VTKGEOVISCORE("vtkGeovisCoreJava", true),
    VTKIOADIOS("vtkIOADIOSJava", false),
    VTKIOAMR("vtkIOAMRJava", true),
    VTKIOCORE("vtkIOCoreJava", true),
    VTKIOENSIGHT("vtkIOEnSightJava", true),
    VTKIOEXODUS("vtkIOExodusJava", true),
    VTKIOEXPORT("vtkIOExportJava", true),
    VTKIOEXPORTOPENGL2("vtkIOExportOpenGL2Java", true),
    VTKIOFFMPEG("vtkIOFFMPEGJava", false),
    VTKIOGDAL("vtkIOGDALJava", false),
    VTKIOGEOJSON("vtkIOGeoJSONJava", false),
    VTKIOGEOMETRY("vtkIOGeometryJava", true),
    VTKIOIMAGE("vtkIOImageJava", true),
    VTKIOIMPORT("vtkIOImportJava", true),
    VTKIOINFOVIS("vtkIOInfovisJava", true),
    VTKIOLAS("vtkIOLASJava", false),
    VTKIOLSDYNA("vtkIOLSDynaJava", true),
    VTKIOLEGACY("vtkIOLegacyJava", true),
    VTKIOMINC("vtkIOMINCJava", true),
    VTKIOMPIIMAGE("vtkIOMPIImageJava", true),
    VTKIOMPIPARALLEL("vtkIOMPIParallelJava", true),
    VTKIOMOVIE("vtkIOMovieJava", true),
    VTKIOMYSQL("vtkIOMySQLJava", false),
    VTKIONETCDF("vtkIONetCDFJava", true),
    VTKIOODBC("vtkIOODBCJava", false),
    VTKIOPDAL("vtkIOPDALJava", false),
    VTKIOPLY("vtkIOPLYJava", true),
    VTKIOPARALLEL("vtkIOParallelJava", true),
    VTKIOPARALLELEXODUS("vtkIOParallelExodusJava", false),
    VTKIOPARALLELLSDYNA("vtkIOParallelLSDynaJava", false),
    VTKIOPARALLELNETCDF("vtkIOParallelNetCDFJava", true),
    VTKIOPARALLELXML("vtkIOParallelXMLJava", true),
    VTKIOPARALLELXDMF3("vtkIOParallelXdmf3Java", false),
    VTKIOPOSTGRESQL("vtkIOPostgreSQLJava", false),
    VTKIOSQL("vtkIOSQLJava", true),
    VTKIOSEGY("vtkIOSegYJava", false),
    VTKIOTRUCHAS("vtkIOTRUCHASJava", false),
    VTKIOTECPLOTTABLE("vtkIOTecplotTableJava", true),
    VTKIOVPIC("vtkIOVPICJava", false),
    VTKIOVIDEO("vtkIOVideoJava", true),
    VTKIOXML("vtkIOXMLJava", true),
    VTKIOXMLPARSER("vtkIOXMLParserJava", true),
    VTKIOXDMF2("vtkIOXdmf2Java", false),
    VTKIOXDMF3("vtkIOXdmf3Java", false),
    VTKIMAGINGCOLOR("vtkImagingColorJava", true),
    VTKIMAGINGCORE("vtkImagingCoreJava", true),
    VTKIMAGINGFOURIER("vtkImagingFourierJava", true),
    VTKIMAGINGGENERAL("vtkImagingGeneralJava", true),
    VTKIMAGINGHYBRID("vtkImagingHybridJava", true),
    VTKIMAGINGMATH("vtkImagingMathJava", true),
    VTKIMAGINGMORPHOLOGICAL("vtkImagingMorphologicalJava", true),
    VTKIMAGINGOPENGL2("vtkImagingOpenGL2Java", false),
    VTKIMAGINGSOURCES("vtkImagingSourcesJava", true),
    VTKIMAGINGSTATISTICS("vtkImagingStatisticsJava", true),
    VTKIMAGINGSTENCIL("vtkImagingStencilJava", true),
    VTKINFOVISBOOSTGRAPHALGORITHMS("vtkInfovisBoostGraphAlgorithmsJava", false),
    VTKINFOVISCORE("vtkInfovisCoreJava", true),
    VTKINFOVISLAYOUT("vtkInfovisLayoutJava", true),
    VTKINTERACTIONIMAGE("vtkInteractionImageJava", true),
    VTKINTERACTIONSTYLE("vtkInteractionStyleJava", true),
    VTKINTERACTIONWIDGETS("vtkInteractionWidgetsJava", true),
    VTKPARALLELCORE("vtkParallelCoreJava", true),
    VTKPARALLELMPI("vtkParallelMPIJava", true),
    VTKPARALLELMPI4PY("vtkParallelMPI4PyJava", true),
    VTKRENDERINGANNOTATION("vtkRenderingAnnotationJava", true),
    VTKRENDERINGCONTEXT2D("vtkRenderingContext2DJava", true),
    VTKRENDERINGCONTEXTOPENGL2("vtkRenderingContextOpenGL2Java", true),
    VTKRENDERINGCORE("vtkRenderingCoreJava", true),
    VTKRENDERINGEXTERNAL("vtkRenderingExternalJava", false),
    VTKRENDERINGFREETYPE("vtkRenderingFreeTypeJava", true),
    VTKRENDERINGGL2PSOPENGL2("vtkRenderingGL2PSOpenGL2Java", true),
    VTKRENDERINGIMAGE("vtkRenderingImageJava", true),
    VTKRENDERINGLICOPENGL2("vtkRenderingLICOpenGL2Java", false),
    VTKRENDERINGLOD("vtkRenderingLODJava", true),
    VTKRENDERINGLABEL("vtkRenderingLabelJava", true),
    VTKRENDERINGMATPLOTLIB("vtkRenderingMatplotlibJava", false),
    VTKRENDERINGOSPRAY("vtkRenderingOSPRayJava", false),
    VTKRENDERINGOCULUS("vtkRenderingOculusJava", false),
    VTKRENDERINGOPENGL2("vtkRenderingOpenGL2Java", true),
    VTKRENDERINGOPENVR("vtkRenderingOpenVRJava", false),
    VTKRENDERINGOPTIX("vtkRenderingOptiXJava", false),
    VTKRENDERINGPARALLEL("vtkRenderingParallelJava", false),
    VTKRENDERINGPARALLELLIC("vtkRenderingParallelLICJava", false),
    VTKRENDERINGQT("vtkRenderingQtJava", false),
    VTKRENDERINGSCENEGRAPH("vtkRenderingSceneGraphJava", false),
    VTKRENDERINGVOLUME("vtkRenderingVolumeJava", true),
    VTKRENDERINGVOLUMEAMR("vtkRenderingVolumeAMRJava", false),
    VTKRENDERINGVOLUMEOPENGL2("vtkRenderingVolumeOpenGL2Java", true),
    VTKTESTINGRENDERING("vtkTestingRenderingJava", true),
    VTKPYTHONINTERPRETER("vtkPythonInterpreterJava", true),
    VTKVIEWSCONTEXT2D("vtkViewsContext2DJava", true),
    VTKVIEWSCORE("vtkViewsCoreJava", true),
    VTKVIEWSGEOVIS("vtkViewsGeovisJava", true),
    VTKVIEWSINFOVIS("vtkViewsInfovisJava", true),
    VTKWEBCORE("vtkWebCoreJava", true),
    VTKWEBGLEXPORTER("vtkWebGLExporterJava", true);


  /**
   * Try to load all library
   *
   * @return true if all library have been successfully loaded
   */
  public static boolean LoadAllNativeLibraries() {
    boolean isEveryThingLoaded = true;
    for (vtkNativeLibrary lib : values()) {
      try {
        if(lib.IsBuilt()) {
          lib.LoadLibrary();
        }
      } catch (UnsatisfiedLinkError e) {
        isEveryThingLoaded = false;
        e.printStackTrace();
      }
    }

    return isEveryThingLoaded;
  }

  /**
   * Load the set of given library and trows runtime exception if any given
   * library failed in the loading process
   *
   * @param nativeLibraries
   */
  public static void LoadNativeLibraries(vtkNativeLibrary... nativeLibraries) {
    for (vtkNativeLibrary lib : nativeLibraries) {
      lib.LoadLibrary();
    }
  }

  /**
   * Disable the pop-in vtkErrorWindow by writing the error to a log file.
   * If the provided logFile is null the default "vtkError.txt" file will be
   * used.
   *
   * @param logFile
   */
  public static void DisableOutputWindow(File logFile) {
    if(logFile == null) {
      logFile = new File("vtkError.txt");
    }
    vtkFileOutputWindow outputError = new vtkFileOutputWindow();
    outputError.SetFileName(logFile.getAbsolutePath());
    outputError.SetInstance(outputError);
  }

  private vtkNativeLibrary(String nativeLibraryName, boolean built) {
    this.nativeLibraryName = nativeLibraryName;
    this.loaded = false;
    this.built = built;
  }

  /**
   * Load the library and throws runtime exception if the library failed in
   * the loading process
   */
  public void LoadLibrary() throws UnsatisfiedLinkError {
    if (!loaded) {
      if (System.getProperty("vtk.lib.dir") != null) {
        File dir = new File(System.getProperty("vtk.lib.dir"));
        patchJavaLibraryPath(dir.getAbsolutePath());
        File libPath = new File(dir, System.mapLibraryName(nativeLibraryName));
        if (libPath.exists()) {
          try {
            Runtime.getRuntime().load(libPath.getAbsolutePath());
            loaded = true;
            return;
          } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
          }
        }
      }
      System.loadLibrary(nativeLibraryName);
    }
    loaded = true;
  }

  /**
   * @return true if the library has already been successfully loaded
   */
  public boolean IsLoaded() {
    return loaded;
  }

  /**
   * @return true if the module was enabled and therefore build
   */
  public boolean IsBuilt() {
    return built;
  }

  /**
   * @return the library name
   */
  public String GetLibraryName() {
    return nativeLibraryName;
  }

  private static void patchJavaLibraryPath(String vtkLibDir) {
    if (vtkLibDir != null) {
      String path_separator = System.getProperty("path.separator");
      String s = System.getProperty("java.library.path");
      if (!s.contains(vtkLibDir)) {
        s = s + path_separator + vtkLibDir;
        System.setProperty("java.library.path", s);
      }
    }
  }

  private String nativeLibraryName;
  private boolean loaded;
  private boolean built;
}
