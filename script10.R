# Definir un entero positivo n
n <- 15

# Inicializar una variable para almacenar la suma
suma <- 0

# Para cada número i de 1 a n
for (i in 1:n) {
  # Calcular i^3, multiplicarlo por (-1)^(i+1), y añadirlo a la suma
  suma <- suma + (-1)^(i+1) * i^3
}

# Imprimir la suma
print(suma)
