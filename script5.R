# Importar la biblioteca necesaria
library(pracma)

# a. Función para evaluar el polinomio
evaluarPolinomio <- function(coeficientes, x) {
  grado <- length(coeficientes) - 1
  resultado <- sum(coeficientes * x^(grado:0))
  return(resultado)
}

# b. Función para comprobar si un valor es raíz del polinomio
esRaiz <- function(coeficientes, x) {
  # Un número es raíz del polinomio si su evaluación es 0
  return(abs(evaluarPolinomio(coeficientes, x)) < 1e-8)
}

# c. Función para calcular la derivada del polinomio
derivadaPolinomio <- function(coeficientes) {
  grado <- length(coeficientes) - 1
  # Los coeficientes de la derivada son los coeficientes multiplicados por los exponentes correspondientes
  coeficientesDerivada <- coeficientes[1:grado] * (grado:1)
  return(coeficientesDerivada)
}

# d. Función para calcular la derivada del polinomio en un punto
derivadaEnPunto <- function(coeficientes, x) {
  coeficientesDerivada <- derivadaPolinomio(coeficientes)
  return(evaluarPolinomio(coeficientesDerivada, x))
}

# e. Función para calcular la integral del polinomio
integralPolinomio <- function(coeficientes) {
  grado <- length(coeficientes)
  # Los coeficientes de la integral son los coeficientes divididos por los exponentes correspondientes
  coeficientesIntegral <- c(coeficientes / (grado:1), 0)
  return(coeficientesIntegral)
}

# f. Función para calcular el área bajo la curva en un intervalo
areaBajoCurva <- function(coeficientes, a, b) {
  coeficientesIntegral <- integralPolinomio(coeficientes)
  # El área bajo la curva es la diferencia entre los valores de la integral en los extremos del intervalo
  area <- evaluarPolinomio(coeficientesIntegral, b) - evaluarPolinomio(coeficientesIntegral, a)
  return(area)
}
# Coeficientes del polinomio
coeficientes <- c(2, -3, 1, -5)

# a. Evaluar el polinomio en m = 2
m <- 2
print(paste("El valor del polinomio en", m, "es", evaluarPolinomio(coeficientes, m)))

# b. Verificar si m es raíz del polinomio
print(paste("¿Es", m, "raíz del polinomio?"))
if (esRaiz(coeficientes, m)) {
  print("Sí")
} else {
  print("No")
}

# c. Calcular la derivada del polinomio
print("Los coeficientes de la derivada del polinomio son:")
print(derivadaPolinomio(coeficientes))

# d. Calcular la derivada del polinomio en m
print(paste("El valor de la derivada del polinomio en", m, "es", derivadaEnPunto(coeficientes, m)))

# e. Calcular la integral del polinomio
print("Los coeficientes de la integral del polinomio son:")
print(integralPolinomio(coeficientes))

# f. Calcular el área bajo la curva en un intervalo
a <- 5
b <- 10
print(paste("El área bajo la curva en el intervalo [", a, ",", b, "] es", areaBajoCurva(coeficientes, a, b)))

