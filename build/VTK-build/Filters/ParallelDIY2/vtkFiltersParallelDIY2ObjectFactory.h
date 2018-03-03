/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkFiltersParallelDIY2ObjectFactory.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkFiltersParallelDIY2ObjectFactory_h
#define vtkFiltersParallelDIY2ObjectFactory_h

#include "vtkFiltersParallelDIY2Module.h" // For export macro
#include "vtkObjectFactory.h"

class VTKFILTERSPARALLELDIY2_EXPORT vtkFiltersParallelDIY2ObjectFactory : public vtkObjectFactory
{
public:
  static vtkFiltersParallelDIY2ObjectFactory * New();
  vtkTypeMacro(vtkFiltersParallelDIY2ObjectFactory, vtkObjectFactory)

  const char * GetDescription() override { return "vtkFiltersParallelDIY2 factory overrides."; }

  const char * GetVTKSourceVersion() override;

  void PrintSelf(ostream &os, vtkIndent indent) override;

protected:
  vtkFiltersParallelDIY2ObjectFactory();

private:
  vtkFiltersParallelDIY2ObjectFactory(const vtkFiltersParallelDIY2ObjectFactory&) = delete;
  void operator=(const vtkFiltersParallelDIY2ObjectFactory&) = delete;
};

#endif // vtkFiltersParallelDIY2ObjectFactory_h
