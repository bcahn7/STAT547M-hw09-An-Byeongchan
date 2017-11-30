context("Squaring numeric(0)")

test_that("It works.", {
  expect_identical(square(numeric(0)), numeric(0))
})
