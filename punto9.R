# Función para determinar la ubicación de los puntos en relación a la circunferencia
determinar_ubicacion_puntos <- function(p, q, a, b, r) {
  n <- length(p)
  r_vector <- integer(n)
  
  for (i in 1:n) {
    distancia_cuadrada <- (p[i] - a)^2 + (q[i] - b)^2
    
    if (distancia_cuadrada < r^2) {
      r_vector[i] <- 1  # Interior
    } else if (distancia_cuadrada == r^2) {
      r_vector[i] <- 2  # Frontera
    } else {
      r_vector[i] <- 3  # Exterior
    }
  }
  
  return(r_vector)
}

# Solicitar al usuario los valores de a, b y r
a <- as.numeric(readline("Ingrese el valor de a: "))
b <- as.numeric(readline("Ingrese el valor de b: "))
r <- as.numeric(readline("Ingrese el valor del radio r: "))

# Solicitar al usuario los vectores p y q
p <- numeric()
q <- numeric()
n <- as.integer(readline("Ingrese el número de puntos (n): "))

for (i in 1:n) {
  x <- as.numeric(readline(paste("Ingrese el valor de x", i, ": ")))
  y <- as.numeric(readline(paste("Ingrese el valor de y", i, ": ")))
  p <- c(p, x)
  q <- c(q, y)
}

# Calcular la ubicación de los puntos utilizando la función
resultado <- determinar_ubicacion_puntos(p, q, a, b, r)

# Etiquetas para el tipo de punto
tipo_punto <- c("Interior", "Frontera", "Exterior")

# Mostrar resultados
for (i in 1:n) {
  cat("Punto (", p[i], ",", q[i], "): ", tipo_punto[resultado[i]], "\n")
}
