context("Print out the one-parameter Box-Cox transformation")

test_that("At least numeric values (which are positive) work.", {
  num_vec <- c(3, 4.6, 3.4)
  expect_identical(boxcoxt(num_vec), ((num_vec)^(0.1) - 1) / 0.1)
  expect_identical(boxcoxt(num_vec, lambda = 0.3), ((num_vec)^(0.3) - 1) / 0.3)
  expect_identical(boxcoxt(num_vec, lambda = 0), log(num_vec))
#  num_vec2 <- c(-1, 0, 5)
#  expect_identical(boxcoxt(num_vec2), ((num_vec2)^(0.1) - 1) / 0.1)
})

