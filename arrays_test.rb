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

end
