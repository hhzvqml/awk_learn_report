#!/bin/awk  -f
BEGIN {
    print "this is a test for awk!"
}

{names= names $1 " "}


$3>=10 {emp = emp +1}

END{
    print emp, "employees worked more than 15 hours"
    print names
    print emp/NR
}
