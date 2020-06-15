context("ms command generator")

test_that("ms simulation commands", {
  expect_equal(msSimulate(2.018e-5, 1000, 'sims.txt'),
               "./msdir/ms 50 1 -t 1.20006 -r 1614.4 20001 >> sims.txt")
  expect_equal(msSimulate(2.018, 1000, 'sims.txt'),
               "./msdir/ms 50 1 -t 1.20006 -r 161440000 20001 >> sims.txt")
  expect_equal(msSimulate(2.018e-5, 20000, 'sims.txt'),
               "./msdir/ms 50 1 -t 24.0012 -r 32288 20001 >> sims.txt")
})
