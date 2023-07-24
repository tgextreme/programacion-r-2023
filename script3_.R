
# Función para calcular el MCM de dos números
mcm <- function(a, b) {
  max_num <- max(a, b)
  while (TRUE) {
    if (max_num %% a == 0 && max_num %% b == 0) {
      print(paste("ejecucion", max_num))
      return(max_num)
    }
    max_num <- max_num + 1
  }
}

# Ejemplo de uso
numero1 <- 12
numero2 <- 18
resultado <- mcm(numero1, numero2)
print(resultado)

