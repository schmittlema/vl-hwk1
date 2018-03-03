set(vtkInfovisCore_HEADERS_LOADED 1)
set(vtkInfovisCore_HEADERS "vtkAddMembershipArray;vtkAdjacencyMatrixToEdgeTable;vtkArrayNorm;vtkArrayToTable;vtkCollapseGraph;vtkCollapseVerticesByArray;vtkContinuousScatterplot;vtkDataObjectToTable;vtkDotProductSimilarity;vtkExtractSelectedTree;vtkEdgeCenters;vtkExpandSelectedGraph;vtkExtractSelectedGraph;vtkGenerateIndexArray;vtkGraphHierarchicalBundleEdges;vtkGroupLeafVertices;vtkMergeColumns;vtkMergeGraphs;vtkMergeTables;vtkMutableGraphHelper;vtkNetworkHierarchy;vtkPipelineGraphSource;vtkPruneTreeFilter;vtkRandomGraphSource;vtkReduceTable;vtkRemoveIsolatedVertices;vtkSparseArrayToTable;vtkStreamGraph;vtkStringToCategory;vtkStringToNumeric;vtkTableToArray;vtkTableToGraph;vtkTableToSparseArray;vtkTableToTreeFilter;vtkThresholdGraph;vtkThresholdTable;vtkTransferAttributes;vtkTransposeMatrix;vtkTreeFieldAggregator;vtkTreeDifferenceFilter;vtkTreeLevelsFilter;vtkVertexDegree;vtkRemoveHiddenData;vtkKCoreDecomposition")

foreach(header ${vtkInfovisCore_HEADERS})
  set(vtkInfovisCore_HEADER_${header}_EXISTS 1)
endforeach()
