# Definir la función para calcular la suma utilizando sapply()
calcular_suma <- function(n) {
  suma <- sum(sapply(1:n, function(i) (-1)^(i+1) * i^3))
  return(suma)
}

# Ejemplo de uso
n <- 15
resultado <- calcular_suma(n)
print(resultado)
