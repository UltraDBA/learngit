#!/bin/awk -f

#xxxxxxxxxxxx
BEGIN {
	math = 0
	english = 0
	computer = 0

	printf "NAME	NO.	MATH	ENGLISH	TOTAL\n"
	printf "-------------------------------------\n"
}

#yyyyyyyyyyy
{
	math+=$3
	english+=$4
	computer+=$5
	printf "%-6s %-6s %4d %8d %8d %8d\n", $1,$2,$3,$4,$5,$3+$4+$5
}

#zzzzzzzzzz
END {
	printf "-------------------------------------\n"
	printf " TOTAL:%10D %8D %8D \n", math, english, computer
	printf "AVERAGE:%10.2f %8.2f %8.2f\n", math/NR, english/NR, computer/NR
}
