context("Calculating the reciprocal of non-numerics")

test_that("At least numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_identical(reciprocal(num_vec), 1/num_vec)
})

test_that("Logicals automatically convert to numeric.", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  expect_identical(reciprocal(logic_vec), 1/logic_vec)
})

test_that("At least numeric values work.", {
  chr_vec <- c("how", "are", "you")
  expect_error(reciprocal(chr_vec))
  chr_vec2 <- c("-1", "0", "5")
  expect_error(reciprocal(chr_vec2))
})
