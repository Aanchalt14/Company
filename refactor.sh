totalEmpHrs=0
totalWorkingDays=0
totalWorkHours=0

#Declaring dictionary
declare -A dayWiseWages
function calculateDailyWage()
{
empHrs=$1
daySalary=$(( $empHrs * $EMP_RATE_PER_HR ))
echo $daySalary
}

function getWorkingHours()
{
case $1 in
$IS_FULL_TIME ) empHrs=8
;;
$IS_PART_TIME ) empHrs=4
;;
*) empHrs=0
;;
esac
echo $empHrs
}
