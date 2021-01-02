latestBackups=$(tmutil latestbackup)
IFS=', ' read -r -a array <<< "${latestBackup}"
for element in "${array[@]}"
do
	echo "element: $element"
done
start_date=$1
end_date=`date '+%Y-%m-%d'`
echo $start_date
sdate=$(date -jf "%F" "${start_date}" "+%s")
echo "sdate = ${sdate}"
edate=$(date -jf "%F" "$end_date" "+%s")
echo $edate
days=$(( (edate - sdate) / 86400 ))
echo "$days days between $start_date and $end_date"
