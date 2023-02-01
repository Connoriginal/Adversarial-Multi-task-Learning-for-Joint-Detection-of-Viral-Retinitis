# test every *_test.py file in the current directory

# redirect to test.txt

echo "" > "./result/Feature15.txt"
echo "-------- STL Model -------" > "./result/Feature15.txt"
echo "---- ARN ----" >> "./result/Feature15.txt"
python single_task_test.py --class_type 1 >> "./result/Feature15.txt"
echo "---- CMV retinitis ----" >> "./result/Feature15.txt"
python single_task_test.py --class_type 2 >> "./result/Feature15.txt"

echo "-------- FSMTL Model -------\n\n" >> "./result/Feature15.txt"
python MTL_test.py >> "./result/Feature15.txt"

echo "-------- SPMTL Model -------\n\n" >> "./result/Feature15.txt"
python MTL_test.py --model_name SPMTL >> "./result/Feature15.txt"

echo "-------- ADMTL Model -------\n\n" >> "./result/Feature15.txt"
python ADMTL_test.py >> "./result/Feature15.txt"
# python ADMTL3_test.py >> $txt