# FIRE Framework

## Overview
    • Introducing FIRE: a machine learning framework for gene signature discovery.
    • Integrated gene expression data using batch correction and variance-based filtering.
    • Identified discriminative gene signature distinguishing glioblastoma from controls.

## Design
This repository contains Python and R scripts that guide you step-by-step through the process of preprocessing, feature selection and classification. The results are saved according to the directory structure mentioned below, but users can customise the directory paths as needed by customizing the config file. 

## Dataset
Please download the gene expression dataset from the Gene Expression Omnibus (GEO) and store it in a .csv format, ensuring that the last column contains the class labels.

## Prerequisites
### Major Packages Required
* Pandas
* Numpy
* scikit-learn
* Matplotlib
  To install the packages use command ``` pip install package-name ```
### Directory structure
* code directory (example: exp1)
* Input/raw/exp1
* Input/prep/exp1
* Output/exp1/Results/

## File Descriptions
  Use function [perform_rfe](perform_rfe.py) to remove less important feature iteratively.
* Asses predictive performance of FLASH features
  
  Compare multiple ML models to obtain the preditive performance of FLASH features using [compare_ml_models.py](compare_ml_models)
* Repeat for other dataset

  Remove batch effects using [combat.R](batch correction)
  * Remove batch effect
