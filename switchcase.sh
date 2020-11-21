echo "Random number: $random"
case $random in
$IS_PART_TIME) empHrs=4
;;
$IS_FULL_TIME) empHrs=8
;;
*) empHrs=0
esac
echo "Employee hours: $empHrs"
salary=$(( $empHrs * $EMP_RATE_PER_HR ))
echo "Salary: $salary"
