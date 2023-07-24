# Definir un entero positivo n

ejercicio12<-function(n){
# Inicializar una variable para almacenar la suma
  suma <- 0
  
  # Para cada número i de 1 a n
  for (i in 1:n) {
    # Calcular el término i de la serie, añadirlo a la suma
    suma <- suma + (-1)^(i+1) / i
  }
  return(suma)
}
print("Dime número n")
n<-as.numeric(scan(nmax = 1))
resultado<-ejercicio12(n)

# Imprimir la suma
print(resultado)
