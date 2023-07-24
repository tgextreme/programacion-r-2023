f<-function(n){
  fibonacci<-numeric(n)
  
  if(n>0){
    fibonacci[1]<-0
    
  }
  if(n>1){
    fibonacci[2]<-1
  }
  
  if(n<=0){
    return (c())
  }
  if(n==1){
    return (c(1))
  }
  if(n==2){
    return (c(0, 1))
  }
  if(n==3){
    return (c(0, 1, 1))
  }
  for(i in 3:n){
    fibonacci[i]<-fibonacci[i-1]+fibonacci[i-2]
    print(paste(fibonacci[i-2], " + ",fibonacci[i-1],"=",fibonacci[i]))
  }
  
  return(fibonacci)
}

print("Dime un número n para Fibonacci")
n<-as.numeric(scan(nmax = 1))

print(f(n))
