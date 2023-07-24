# Solicitar un número al usuario
print("Por favor, introduce un número decimal")
num_decimal <- as.integer(scan(nmax = 1))

# Convertir el número decimal a hexadecimal
num_hexadecimal <- as.hexmode(num_decimal)

# Imprimir el número hexadecimal
print(paste("El número decimal", num_decimal, "en hexadecimal es", num_hexadecimal))
