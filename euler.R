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

even_fibonacci_numbers(4000000)

