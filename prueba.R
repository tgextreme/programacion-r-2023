print("Introduce un número")

n=scan(nmax=1, quiet = T)
i=(3:n-1)
print(i)

p=c(n%%i)

print(p)

if(any(p==0)){
  print("no es primo")
}else{
  print("es primo")
}