#!/bin/awk -f
#

BEGIN{
    print "input : rows of numbers"
    print "output:sum of each column"
}

NR==1 {nfld =NF}
      {for(i=1;i<=NF;i++)
          sum[i]+=$i

          if(NF!=nfld)
              print "line " NR "has "NF "entries ,not "nfld
      }

      END{for(i=1;i<=nfld;i++)
              printf("%g%s",sum[i],i<nfld?"\t":"\n")
          
      }        
