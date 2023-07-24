es_primo <- function(numero){ 
  # 1 no es un número primo
  #if (numero == 1) {
   # return (FALSE)
  #}
  # Verificar si el número tiene algún divisor distinto de 1 y él mismo
  for (i in 2:(numero - 1)) {
    # Calcular el resto    
    valor <- numero %% i
    # Si el resto es 0, significa que el número es divisible por 'i'
    # y por lo tanto no es un número primo
    if (valor == 0) {      
      return (FALSE)
    }
  }
  # Si el bucle se completa, significa que el número no tiene divisores distintos de
  # 1 y él mismo y por lo tanto es un número primo
  return (TRUE)
}

# Función para imprimir todos los números primos menores que un número dado
funcionNum <- function(numero) {
  # Recorrer todos los números menores que el número dado
  for (i in 2:(numero - 1)) {
    # Si el número es primo, imprimirlo
    if (es_primo(i)) {
      print(paste("Es primo", i))
    }
  }
}

# Pide al usuario que introduzca un número
print("Dime un número")
numero <- scan(nmax = 1)

# Llamar a la función funcionNum

funcionNum(numero)

