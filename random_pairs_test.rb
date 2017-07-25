
require "minitest/autorun"
require_relative "random_pairs.rb"

class TestPairingNames < Minitest::Test 

  def test_1_equals_1
    assert_equal(1,1)
  end
  
  def test_multiple_pairs
    names = ["Katie Collins", "Aaron Camersi", "Derrick Gillispie", "Andrew Farley", "Adrian Sauls", 
     "John Murphy", "Steven Miller", "Victoria Frame", "Stephanie Frame", "Chris Phelps", "Derick West", 
     "Ty Cook", "Robert Caldwell", "Marcus Folks", "Tyler Richards", "Mike Handy"].shuffle
    p results = pair(names)
    p assert_equal(8, results.count)
    puts "\n"
  end

  def test_odd_number
    names = ["Katie Collins", "Aaron Camersi", "Derrick Gillispie", "Andrew Farley", "Adrian Sauls", 
     "John Murphy", "Steven Miller", "Victoria Frame", "Stephanie Frame", "Chris Phelps", "Derick West", 
     "Ty Cook", "Robert Caldwell", "Marcus Folks", "Tyler Richards", "Mike Handy", "John Doe"].shuffle
    p results = pair(names)
    p assert_equal(8, results.count)
    puts "\n"
  end

end 