#!/bin/awk  -f
BEGIN {
    print "this is a test for awk!"
}

{names= names $1 " "}
{
    if(NR<4)
    {
        print "this is no target line"
    }
}


$2>6 {emp = emp +1;pay=pay+$2*$3}

END{if(emp>0)
        print n,"employee ,total pay is",pay,"average pay is ",pay/n
    else
        print "no employee are paid more than $6/hour"
}
