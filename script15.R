# definir la función factorial
factorial <- function(n) ifelse(n==0, 1, n * factorial(n-1))

# definir la función binomial
binomial_function <- function(x, n) {
  resultado <- 1
  for (i in 1:n){
    print(paste("factorial(n)",factorial(n)," x^i ",(x^i), (factorial(i)*factorial(n-i))))
    
    resultado <- resultado + factorial(n)/(factorial(i)*factorial(n-i)) * x^i
  }
  return(resultado)
}

# pedir los inputs del usuario
print("Ingrese un valor para x")
x <- as.numeric(scan(nmax = 1))

print("Ingrese un valor para n")
n <- as.numeric(scan(nmax = 1))

# imprimir el resultado
print(binomial_function(x, n))

