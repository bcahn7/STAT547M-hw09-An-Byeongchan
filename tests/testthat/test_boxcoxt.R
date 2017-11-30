context("Testing on the inputs on the one-parameter Box-Cox transformation")

test_that("At least numeric values (which are positive) work.", {
  num_vec <- c(3, 4.6, 3.4)
  expect_identical(boxcoxt(num_vec), ((num_vec)^(0.1) - 1) / 0.1)
  expect_identical(boxcoxt(num_vec, lambda = 0.3), ((num_vec)^(0.3) - 1) / 0.3)
  expect_identical(boxcoxt(num_vec, lambda = 0), log(num_vec))

})

test_that("Negative numeric values do not work.", {
  num_vec2 <- c(-1.2, 0, 5.2)
  expect_error(boxcoxt(num_vec2))
  num_vec3 <- c(0, 0, 0, 0)
  expect_error(boxcoxt(num_vec3))
})

test_that("Character values do not work.", {
  chr_vec <- c("how", "are", "you")
  expect_error(boxcoxt(chr_vec))
  chr_vec2 <- c("-1", "0", "5")
  expect_error(boxcoxt(chr_vec2))
})

test_that("There is a warning if the input lambda is too big (>5) or too small(<-5).", {
  lambda_in <- 8
  num_vec4 <- c(3, 4.6, 3.4)
  expect_warning(boxcoxt(num_vec4, lambda = lambda_in))
  lambda_in <- -6
  expect_warning(boxcoxt(num_vec4, lambda = lambda_in))
})
