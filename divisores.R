print("Digame un número")

m<-as.integer(scan(nmax = 1))

for(n in 1:(n-1)){
  if(m%%n==0){
    print(paste(n))
  }
}