set.seed(123) 
data <- sample(1:100, 50)
data

ratarata <- function(x) {
  hasil <- 0
  total <- 0
  n <- length(x)
  for (i in 1:n) {
    total <- total + x[i]
  }
  hasil = total / n
  return (hasil)
}

ratarata(data)

varians <- function(x) {
  n = length(x)
  total = 0
  hasil = 0
  for (i in 1:n){
    total = total + (x[i] - ratarata(x))^2
  }
  hasil = total / (n-1)
  return (hasil)
}

varians(data)