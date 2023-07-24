# Definir una función para calcular el MCD usando el algoritmo de Euclides
mcd <- function(a, b) {
  if (b == 0) {
    return(a)
  } else {
    return(mcd(b, a %% b))
  }
}

# Definir una función para calcular el MCM usando la relación entre el MCM y el MCD
mcm <- function(a, b) {
  return(abs(a*b) / mcd(a, b))
}

# Leer dos números del usuario
print("Ingrese el primer número:")
num1 <- as.integer(scan(nmax = 1))

print("Ingrese el segundo número:")
num2 <- as.integer(scan(nmax = 1))

# Calcular e imprimir el MCM
print(paste("El MCM es", mcm(num1, num2)))
