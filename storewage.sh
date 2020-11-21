while(( $totalWorkHours < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do
((totalWorkingDays++))
#Calling function getWorkingHours by passing random number
workHours="$( getWorkingHours $(( RANDOM%3 )) )"

echo "Work hours from function getWorkingHours()::::::::::>>> $workHours "
totalWorkHours=$(( $totalWorkHours + $workHours ))
echo -e "TotalWorkHours: $totalWorkHours\n"

#Using array to store day-wise salary
empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"

#Using dictionary to store day-wise salary
dayWiseWages[$totalWorkingDays]="$(calculateDailyWage $workHours)"

done

totalSalary=$(( $totalWorkHours * $EMP_RATE_PER_HR ));
