context("alignment data transformations")

test_that("sorting commands", {
  m_raw <- matrix(c(0,0,0,1,1,1,0,1,0), ncol = 3, nrow = 3)
  m_sort <- matrix(c(0,0,0,1,1,1,1,0,0), ncol = 3, nrow = 3)
  
  expect_equal(sort_align(m_raw), m_sort, check.attributes = F)
})

