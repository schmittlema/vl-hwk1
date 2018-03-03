#include <iostream>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/pcl_base.h>

int main (int argc, char** argv)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);

  // Fill in the cloud data…

  pcl::PCDReader reader;
  // Replace the path below with the path where you saved your file
  reader.read (argv[1] , *cloud); // Remember to download the file first!

  printf("%i cloud pts\n", cloud->points.size());
  
  // Try to do robust plane fit
  pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
  pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
  pcl::SACSegmentation<pcl::PointXYZ> seg;  // Create segmentation object

  seg.setOptimizeCoefficients (true);      // optional
  seg.setModelType (pcl::SACMODEL_PLANE);  // mandatory
  seg.setMethodType (pcl::SAC_RANSAC);
  seg.setDistanceThreshold (0.01);

  seg.setInputCloud (cloud);
  seg.segment (*inliers, *coefficients);

  // did it work?
  
  if (inliers->indices.size () == 0) {
    PCL_ERROR ("Could not estimate a planar model for the given dataset.");
    return (-1);
  }

  // report results

  std::cout << "Model coefficients: " 
          << coefficients->values[0] << " " 
          << coefficients->values[1] << " "
          << coefficients->values[2] << " " 
          << coefficients->values[3] << std::endl;

  printf("%i inliers\n", inliers->indices.size());

  pcl::ExtractIndices<pcl::PointXYZ> extract;
  extract.setInputCloud (cloud);
  extract.setIndices (inliers);
  extract.setNegative (false);
  
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_inliers(new pcl::PointCloud<pcl::PointXYZ>);
  extract.filter (*cloud_inliers);

  extract.setNegative (true);
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_outliers(new pcl::PointCloud<pcl::PointXYZ>);
  extract.filter (*cloud_outliers);

  printf("%i outliers\n", cloud_outliers->points.size());

  //  for (size_t i = 0; i < inliers->indices.size (); ++i)
  //    cloud_inliers->points.push_back(cloud->points[inliers->indices[i]]);
  
  pcl::PCDWriter writer;
  writer.write (argv[1], *cloud_inliers);
  writer.write (argv[1], *cloud_outliers);

  
  return (0);
  
}
