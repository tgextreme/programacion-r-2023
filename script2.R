# Definir una función para calcular el MCD usando el algoritmo de Euclides
mcd <- function(a, b) {
  # Si b es 0, a es el MCD
  if (b == 0) {
    return(a)
  } else {
    # De lo contrario, calcular el MCD de b y el resto de a/b
    return(mcd(b, a %% b))
  }
}

# Leer dos números del usuario
print("Ingrese el primer número:")
num1 <- as.integer(scan(nmax = 1))

print("Ingrese el segundo número:")
num2 <- as.integer(scan(nmax = 1))

# Calcular e imprimir el MCD
print(paste("El MCD es", mcd(num1, num2)))
