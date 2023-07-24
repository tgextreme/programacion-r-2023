# Definir un entero positivo n

print("dime un numero")
n <- as.numeric(scan(nmax=1))

# Calcular la suma de los primeros n términos de la serie
suma <- sum(sapply(1:n, function(i) (-1)^(i+1) * i^3))

# Imprimir la suma
print(suma)
