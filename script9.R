# Definir una función para calcular una fila del triángulo de Pascal
calcular_fila <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    fila_anterior <- calcular_fila(n - 1)
    fila <- c(0, fila_anterior) + c(fila_anterior, 0)
    return(fila)
  }
}

# Definir la profundidad del triángulo de Pascal
profundidad <- scan(nmax = 1)

# Imprimir cada fila del triángulo de Pascal hasta la profundidad especificada
for (i in 0:profundidad) {
  fila <- calcular_fila(i)
  print(fila)
}
