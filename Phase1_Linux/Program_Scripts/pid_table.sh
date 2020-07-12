#! /bin/bash

printf "%-10s%-15s%-15s%-15s%s\n" "PID" "PPID" "CMD" "%MEM" "%CPU"

data=$(ps -o pid,ppid,comm,pmem,pcpu | grep -v PID | awk '/[0-9]*/{print$1":"$2":"$3":"$4":"$5}')

for i in $data
do
	PID=$(echo $i | cut -d: -f1)
	PD=$(echo $i |cut -d: -f2)
	CMD=$(echo $i | cut -d: -f3)
	MEM=$(echo $i | cut -d: -f4)
	CPU=$(echo $i | cut -d: -f5)
	printf "%-10s%-15s%-15s%-15s%s\n" "$PID" "$PD" "$CMD" "$MEM" "$CPU"
done
