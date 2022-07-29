#Q4

# 1st approach
unlist(list(M='Manufacturing', T='Tourism', SE=list(A='Agriculture', C='Construction')))

# 2nd approach (alternative)
c(list(M='Manufacturing', T='Tourism', SE=list(A='Agriculture', C='Construction')), recursive=T)
