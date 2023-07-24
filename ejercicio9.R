# Función para determinar la ubicación de los puntos en relación a la circunferencia
determinar_ubicacion_puntos <- function(p, q, a, b, r) {
  n <- length(p)
  r_vector <- numeric(n)
  
  for (i in 1:n) {
    distancia <- sqrt((p[i] - a)^2 + (q[i] - b)^2)
    
    if (distancia < r) {
      r_vector[i] <- 1  # Interior
    } else if (distancia == r) {
      r_vector[i] <- 2  # Frontera
    } else {
      r_vector[i] <- 3  # Exterior
    }
  }
  
  return(r_vector)
}

# Ejemplo de uso
p <- c(1, 2, 3, 4, 5)
q <- c(1, 2, 3, 4, 5)
a <- 3
b <- 3
r <- 2

resultado <- determinar_ubicacion_puntos(p, q, a, b, r)
print(resultado)
