# Definir un entero positivo n
n <- 10

# Calcular la suma de los primeros n términos de la serie
suma <- sum(sapply(1:n, function(i) (-1)^(i+1) / i))

# Imprimir la suma
print(suma)
