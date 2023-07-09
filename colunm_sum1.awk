#!/bin/awk -f
#

BEGIN{
    print "input : rows of numbers"
    print "output:sum of each column"
}

{
    for(i=1;i<=NF;i++)
        sum[i]+=$i
    if(NF>maxfld)
        maxfld=NF
}
END{
    for(i=1;i<=maxfld;i++){
        printf("g",sum[i])
        if(i<maxfld)
            printf("\t")
        else
            printf("\n")
    }
}
