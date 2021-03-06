require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end


	def test_middles
		assert_equal [2,3], @m.middles([1,2,3], [8,3,7])
	end


	def test_max
		assert_equal 5, @m.max(1,5,3)
		assert_equal 100, @m.max(100,2,56)
		assert_equal 10, @m.max(6,4,10)
	end

	def test_lucky13
		assert_equal true, @m.lucky13?([2, 0, 5, 4, 10])
		assert_equal true, @m.lucky13?([6, 4, 2, 7])
		assert_equal false, @m.lucky13?([1, 4, 1, 7])
		assert_equal false, @m.lucky13?([2, 3, 2])
	end

	def test_repeat_separator
		assert_equal 'ThisAndThis', @m.repeat_separator('This', 'And', 2)
		assert_equal 'BobAndBobAndBob', @m.repeat_separator('Bob', 'And', 3)
	end

	def test_same_ends
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 0)
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 2)
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 7)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 3)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 5)
	end

	def test_starry
		assert_equal true, @m.starry?('a*abc*c')
		assert_equal true, @m.starry?('****')
		assert_equal false, @m.starry?('abc*efg')
		assert_equal false, @m.starry?('12*34')
	end

	def test_plus_it
		assert_equal '++ll+', @m.plus_it('hello', 'l')
		assert_equal '+++', @m.plus_it('the', 'p')
		assert_equal 'lll', @m.plus_it('lll', 'l')
	end

	def test_zero_front
		assert_equal [0, 0, 5, 3, 1, 6], @m.zero_front([5, 0, 3, 1, 0, 6])
		assert_equal [1, 2, 3, 4, 5], @m.zero_front([1, 2, 3, 4, 5])
	end

	def test_ten_run
		assert_equal [2, 10, 10, 10, 20, 20], @m.ten_run([2, 10, 3, 4, 20, 5])
		assert_equal [5, 2, 3, 0, 0, 0, 10, 10] @m.ten_run([5, 2, 3, 0, 1, 5, 10, 13])
		assert_equal [1, 2, 3, 4, 5] @m.ten_run([1, 2, 3, 4, 5])
		assert_equal [10, 10, 10] @m.ten_run([10, 11, 12])
		assert_equal [20, 20, 20] @m.ten_run([20, 20, 20])
	end

	def test_max_span
		assert_equal 4 , @m.max_span([1,2,1,1,3])
		assert_equal 6, @m.max_span([1,4,2,1,4,1,4])
		assert_equal 6, @m.max_span([1,4,2,1,4,4,4])
   		assert_equal 0, @m.max_span([1,2,3,4,5,6])
	end

end
