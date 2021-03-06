library(startR)
library(UnidecodeR)

context("Testing shipname string normalizing")
test_that("normalize_shipname", {
  expect_true(is.na(normalize_shipname(NA)))
  expect_true(is.na(normalize_shipname("")))
  expect_equal(normalize_shipname("MixEd"), "MIXED")
  expect_equal(normalize_shipname("weird -+%()<>$;!&'`\\.#/"), "WEIRD")
  expect_equal(normalize_shipname("  \tspaced  \nname      "), "SPACEDNAME")
  expect_equal(normalize_shipname("f/b boat f/v othername"), "BOATOTHERNAME")
  expect_equal(normalize_shipname("r/v boat othername"), "BOATOTHERNAME")
  expect_equal(normalize_shipname("no. boat"), "BOAT")
  expect_equal(normalize_shipname("no537 boat"), "BOAT537")
  expect_equal(normalize_shipname("boat IX"), "BOAT9")
  expect_equal(normalize_shipname("boat IX (something)"), "BOAT9")
  expect_equal(normalize_shipname("a"), "A")
  expect_equal(normalize_shipname("no"), "NO")
  expect_equal(normalize_shipname("海达705"), "HAIDA705")
})

context("Testing callsign string normalizing")
test_that("normalize_callsign",{
  expect_true(is.na(normalize_callsign(NA)))
  expect_true(is.na(normalize_callsign("")))
  expect_equal(normalize_callsign("MixEd"), "MIXED")
  expect_equal(normalize_callsign("weird -+%()<>$;!&'`\\.#/"), "WEIRD")
  expect_equal(normalize_callsign("  \tspaced  \nname      "), "SPACEDNAME")
  expect_equal(normalize_callsign("a"), "A")
  expect_equal(normalize_callsign("0020300a"), "20300A")
})
