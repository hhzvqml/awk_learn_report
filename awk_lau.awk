#!/bin/awk -f
#
#pattern {action}

BEGIN {
    printf("print countries with column headers and totals\n\n ")
    printf("%10s  %4s  %4s  %s \n\n","country","area","pop","contitent")
}

{
    printf("%10s  %4s  %4s  %s \n",$1,$2,$3,$4)
}


