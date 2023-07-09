#!/bin/awk -f
#

#正则表达式的元字符包括
#\ ^ $ . [] | () * + ?
#   ^C 匹配以字符C开始的字符串
#   C$ 匹配以字符C结束的字符串
#   ^.$匹配有且仅有一个字符的字符串
#   ... 匹配任意三个字符
#character class
#[-0-9]表示一个数字  [a-zA-A][0-9]匹配一个后面紧跟着一个数字的字母
#complemented(互补)
#^[ABC]    匹配以A,B或C开始的字符串
#^[^ABC]   匹配任意一个字符除了ABC
#选择运算符 | :如果r1 与r2 是正则表达式,那么r1|r2 所匹配的字符串,或者与r1,或者与r2匹配

#拼接 (r1)(r2)
#(Asian|European|North American) (male|female) (black|blue) bird

#  * + ?  *用来表明未知,+ 表明重复,?表明存在
#example
#/^[0-9]+/ 匹配含有且仅含有数字的输入行
#/^(\+|-)?[0-9]\.?[0-9]*\ 十进制小数,符号和小数部分可选.
#
#
#



#范围模式
#part1,part2

BEGIN{
    print FILENAME
}
NR=2,NR=6 {
   print $0
}

END{
    print FILENAME
}
