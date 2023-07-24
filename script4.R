# Definir una función para calcular el MCD usando el algoritmo de Euclides
mcd <- function(a, b) {
  if (b == 0) {
    return(a)
  } else {
    return(mcd(b, a %% b))
  }
}

# Definir una función para comprobar si dos números son primos relativos
son_primos_relativos <- function(a, b) {
  return(mcd(a, b) == 1)
}

# Leer dos números del usuario
print("Ingrese el primer número:")
num1 <- as.integer(scan(nmax = 1))

print("Ingrese el segundo número:")
num2 <- as.integer(scan(nmax = 1))

# Comprobar si los números son primos relativos e imprimir el resultado
if (son_primos_relativos(num1, num2)) {
  print(paste("Los números", num1, "y", num2, "son primos relativos."))
} else {
  print(paste("Los números", num1, "y", num2, "no son primos relativos."))
}
