# Función para convertir de decimal a hexadecimal
convertir_a_hexadecimal <- function(num) {
  # Vector con los dígitos hexadecimales
  digitos_hex <- c(as.character(0:9), LETTERS[1:6])
  
  # Inicializar la cadena hexadecimal
  hexadecimal <- ""
  
  while (num > 0) {
    # Calcular el residuo
    residuo <- num %% 16
    
    # Añadir el dígito hexadecimal correspondiente al inicio de la cadena
    hexadecimal <- paste0(digitos_hex[residuo + 1], hexadecimal)
    
    # Actualizar el número, descartando el residuo
    num <- num %/% 16
  }
  
  return(hexadecimal)
}

# Solicitar un número al usuario
print("Por favor, introduce un número decimal")
num_decimal <- as.integer(scan(nmax = 1))

# Convertir el número decimal a hexadecimal
num_hexadecimal <- convertir_a_hexadecimal(num_decimal)

# Imprimir el número hexadecimal
print(paste("El número decimal", num_decimal, "en hexadecimal es", num_hexadecimal))
