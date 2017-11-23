BEGIN{
printf "*****AWK******\n"
}

{
s += $1
}
END{
print "sum is", s, " average is", s/NR
}




