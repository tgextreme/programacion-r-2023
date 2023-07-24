# Función para convertir un número entero a binario
convertirABinario <- function(numero) {
  # Verificar si el número es 0
  if (numero == 0) {
    return(0)
  }
  
  # Crear un vector para almacenar los restos
  restos <- c()
  
  # Realizar las divisiones sucesivas
  while (numero > 0) {
    # Calcular el resto y el cociente de la división por 2
    resto <- numero %% 2
    numero <- numero %/% 2
    
    # Almacenar el resto
    restos <- c(restos, resto)
  }
  
  # Construir el número binario tomando los restos en sentido inverso
  binario <- paste(rev(restos), collapse = "")
  
  return(as.integer(binario))
}

# Prueba la función
print("Dime un número:")
numero <- as.integer(scan(nmax = 1))

print(paste("La representación binaria de", numero, "es", convertirABinario(numero)))
