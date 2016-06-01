##
## Array class test for Correlation
##

assert("Array#correlation_coefficient_with") do
  d = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  assert_equal(1.0, d.correlation_coefficient_with([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
  assert_equal(1.0, d.correlation_coefficient_with(d))
  assert_equal(1.0, d.correlation_coefficient_with(d.map{|a|a/2}))
  assert_equal(-1.0, d.correlation_coefficient_with(d.reverse))
  assert_equal(0.9923373049285564, d.correlation_coefficient_with([2, 3, 3, 4, 6, 7, 8, 9, 10, 11]))
  assert_equal(-0.9803906931996748, d.correlation_coefficient_with([15, 13, 12, 12, 10, 10, 8, 7, 4, 3]))
end

