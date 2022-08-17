#Q2(i)
rec <- function(g){
  
  if(g<=1){
    1}
  else{
    g^5 + rec(g-1)}
  
}

rec(7)
# 7^5 + 6^5 +... +1^5 = 29008

#Q2(ii)
rec <- function(g){
  
  if(g<=1){
    1}
  else{
    g * rec(g-1)}
  
}

rec(5)
# 5! = 120

#Q2(iii)
rec <- function(vc){
  
  if(length(vc)<=1){
    vc}
  else{
    a <- vc[1]; b <- vc[-1]
    lo <- b[a<b]
    up <- b[a>=b]
    slo <- rec(lo)
    sup <- rec(up)
    
    c(slo, a, sup)
  }
  
}

x <- c(68, 96, 52, 100, 8, 46)
rec(x)
# 100, 96, 68, 52, 46, 8 (The elements are sorted in descending order)