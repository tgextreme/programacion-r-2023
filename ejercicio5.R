print("Introduce un numero real a")
a<-as.numeric(scan(nmax = 1))
print ("Introduce un entero positivo")
k<-as.integer(scan(nmax=1))

for (i in 1:k){
  potencia<- a^i
  print(paste(a,"^",i,"=",potencia))
}