

problema<- function(y){
  mayor_x <- 0
  while (2^mayor_x < y) {
    mayor_x <- mayor_x + 1
  }
  
  mayor_x <- mayor_x - 1
  
  return (mayor_x)
}
print("Digame un número")
y<-as.numeric(scan(nmax=1))
resultado =problema(y)
print(resultado)
