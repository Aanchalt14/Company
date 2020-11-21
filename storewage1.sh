echo -e "\n Printing Days from array"
echo ${!empDailyWage[@]}

echo -e "\n Printing salary stored day wise in an array"
echo ${empDailyWage[@]}

echo -e "\n Printing Days from dictionary"
echo ${!dayWiseWages[@]}

echo -e "\n Printing salary stored day wise in dictionary"

echo ${dayWiseWages[@]}
echo "Total salary: $totalSalary"
