/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkFiltersParallelDIY2ObjectFactory.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkFiltersParallelDIY2ObjectFactory.h"
#include "vtkVersion.h"

// Include all of the classes we want to create overrides for.

#include "vtkPResampleToImage.h"
#include "vtkPResampleWithDataSet.h"

vtkStandardNewMacro(vtkFiltersParallelDIY2ObjectFactory)

// Now create the functions to create overrides with.

  VTK_CREATE_CREATE_FUNCTION(vtkPResampleToImage)
  VTK_CREATE_CREATE_FUNCTION(vtkPResampleWithDataSet)

vtkFiltersParallelDIY2ObjectFactory::vtkFiltersParallelDIY2ObjectFactory()
{

    this->RegisterOverride("vtkResampleToImage",
                           "vtkPResampleToImage",
                           "Override for vtkFiltersParallelDIY2 module", 1,
                           vtkObjectFactoryCreatevtkPResampleToImage);
    this->RegisterOverride("vtkResampleWithDataSet",
                           "vtkPResampleWithDataSet",
                           "Override for vtkFiltersParallelDIY2 module", 1,
                           vtkObjectFactoryCreatevtkPResampleWithDataSet);
}

const char * vtkFiltersParallelDIY2ObjectFactory::GetVTKSourceVersion()
{
  return VTK_SOURCE_VERSION;
}

void vtkFiltersParallelDIY2ObjectFactory::PrintSelf(ostream &os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

// Registration of object factories.
static unsigned int vtkFiltersParallelDIY2Count;

VTKFILTERSPARALLELDIY2_EXPORT void vtkFiltersParallelDIY2_AutoInit_Construct()
{
  if(++vtkFiltersParallelDIY2Count == 1)
    {
    
    vtkFiltersParallelDIY2ObjectFactory* factory = vtkFiltersParallelDIY2ObjectFactory::New();
    if (factory)
      {
      // vtkObjectFactory keeps a reference to the "factory",
      vtkObjectFactory::RegisterFactory(factory);
      factory->Delete();
      }
    }
}

VTKFILTERSPARALLELDIY2_EXPORT void vtkFiltersParallelDIY2_AutoInit_Destruct()
{
  if(--vtkFiltersParallelDIY2Count == 0)
    {
    // Do not call vtkObjectFactory::UnRegisterFactory because
    // vtkObjectFactory.cxx statically unregisters all factories.
    }
}
