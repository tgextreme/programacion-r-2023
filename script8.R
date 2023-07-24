# Definir una función para convertir un número binario a decimal
binario_a_decimal <- function(binario) {
  # Convertir el número binario a una cadena de caracteres y luego a un vector de dígitos
  digitos <- as.numeric(strsplit(as.character(binario), split = "")[[1]])
  
  # Calcular la longitud del vector de dígitos
  n <- length(digitos)
  
  # Invertir el vector de dígitos para que el primer dígito sea el menos significativo
  digitos <- rev(digitos)
  
  # Crear un vector para almacenar los valores decimales correspondientes a cada dígito
  decimales <- numeric(n)
  
  # Para cada dígito en el número binario
  for (i in seq_len(n)) {
    # Multiplicar el dígito por 2 elevado a la potencia de su posición y almacenar el resultado
    decimales[i] <- digitos[i] * 2^(i - 1)
  }
  
  # Sumar todos los valores decimales para obtener el número decimal correspondiente
  suma <- sum(decimales)
  
  return(suma)
}

# Probar la función con un número binario
binario <- as.numeric(scan(nmax=1))
decimal <- binario_a_decimal(binario)
print(decimal)


