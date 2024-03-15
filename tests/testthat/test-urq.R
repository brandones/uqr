library(tibble)

test_that("urq doesn't fail", {
  data(engel)
  formula <- foodexp ~ income
  expect_no_error(urq(formula, data = engel))
})

test_that("urq doesn't fail when using tau parameter", {
  data(engel)
  formula <- foodexp ~ income
  expect_no_error(urq(formula, data = engel, tau = c(0.25, 0.5, 0.75)))
})

test_that("urq doesn't fail when data is a tibble", {
  formula <- foodexp ~ income
  expect_no_error(urq(formula, data = as_tibble(engel)))
  expect_no_error(urq(formula, data = as_tibble(engel), tau = c(0.25, 0.5, 0.75)))
})