add_threes_fives <- function(number) {
  paste("Sum 3s and 5s for: ", number)
  sum <- 0
  for (n in 1:(number+1)) {
    if ((n %% 3) == 0 | (n %% 5) == 0) {
      sum <- sum + n
    }
  }
  paste("Sum is", sum)
}

even_fibonacci_numbers <- function(max) {
  first <- 1
  second <- 2
  sum <- 0
  while (second < max) {
    if (second %% 2 == 0) {
      sum <- second + sum
    }
    second <- first + second
    first <- second - first
    paste("Here")
    paste("Fibonacci number is", second)
  }
  paste("Sum is", sum)
}

is.prime <- function(n) n == 2L || all(n %% 2L:ceiling(sqrt(n)) != 0)

largest_prime_factor <- function(number){
  limit <- sqrt(number)
  print(limit)
  prime_factors <- vector()
  d <- 2
  while (d < limit) {
    if (number %% d == 0 & is.prime(d)) {
      prime_factors <- append(prime_factors, d)
    }
    d <- d + 1
  }
  paste("Largest factor", tail(prime_factors, n=1))
}

add_threes_fives(1000)
even_fibonacci_numbers(4000000)
largest_prime_factor(600851475143)

