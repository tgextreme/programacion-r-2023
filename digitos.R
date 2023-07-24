print("Dime un número")

n<-as.integer(scan(nmax=1))

s<-as.character(n)
caracteres<-strsplit(s, split="")

for (ca in caracteres){
  print(ca)  
}

