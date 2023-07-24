# Definir un entero positivo n


# Inicializar una variable para almacenar la suma
calcular<-function(n){
  suma <- 0
  
  # Para cada número i de 0 a n-1
  for (i in 0:(n-1)) {
    # Calcular el término i de la serie, añadirlo a la suma

    suma <- suma + ((-1)^i) / (2 * i + 1)
    
  }
  
  # Calcular una aproximación de pi
  pi_aproximado <- 4 * suma
  return (pi_aproximado)
}
print("Digame número n")
n<-as.numeric(scan(nmax = 1))

resultado<-calcular(n)

# Imprimir pi_aproximado
print(resultado)