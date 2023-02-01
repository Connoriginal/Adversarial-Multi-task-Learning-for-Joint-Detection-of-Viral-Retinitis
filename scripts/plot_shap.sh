#!/bin/bash

# Plot SHAP value of every model
DIR="./result/SHAP/Feature15"

# Model STL
echo "------ STL MLP model ------" 
python plot_shap.py --model_name STL --dir $DIR

# Model FSMTL
echo "------ FSMTL model ------"
python plot_shap.py --model_name FSMTL --dir $DIR

# Model SPTL
echo "------ SPMTL model ------"
python plot_shap.py --model_name SPMTL --dir $DIR

# Model ADMTL
echo "------ ADMTL model ------"
python plot_shap.py --model_name ADMTL --dir $DIR
