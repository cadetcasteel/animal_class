require "minitest/autorun"
require_relative "panda.rb"

class Testpandafunctions < Minitest::Test
	def test_class_returns_name
		animal = Panda.new("poe")
		assert_equal("poe",animal.name)
	end
	def test_class_returns_sound
		animal = Panda.new("poe")
		assert_equal("roar",animal.sound)
	end
	def test_class_returns_action
		animal = Panda.new("oreo")
		assert_equal("eats",animal.action)
		assert_equal("oreo",animal.name)
		assert_equal("roar",animal.sound)
	end
	def test_class_returns_char_length
		animal = Panda.new("bob")
		assert_equal(3,animal.name_count)
	end
	def test_class_returns_char_length
		animal = Panda.new ("goku")
		assert_equal(4,animal.name_count)
	end
	def test_class_returns_true_if_letter_included_in_animal_name
		animal = Panda.new("beerus")
		letter = "b"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_three_returns_if_letter_included_in_animal_name
		animal = Panda.new("beerus")
		letter = "r"
		assert_equal(true,animal.correct_letter?(letter))
	end
def test_class_returns_if_letter_included_not_in_animal_name
		animal = Panda.new("beerus")
		letter = "x"
		assert_equal(false,animal.correct_letter?(letter))
	end
	def test_class_returns_six_asterics
		animal = Panda.new( "beerus")
		assert_equal(["*","*","*","*","*","*"],animal.asterics)
	end
	def test_class_returns_seven_asterics
		animal = Panda.new("matthew")
		assert_equal(["*","*","*","*","*","*","*"],animal.asterics)
	end
	def test_class_user_guess_pushed_into_guess_array
		animal = Panda.new("matthew")
		letter = "u"
		assert_equal(["u"],animal.update_guessed(letter))
	end
def test_class_user_two_guess_pushed_into_guess_array
		animal = Panda.new("matthew")
		animal.guessed = ["i","t","w"]
		letter = "z"
		assert_equal(["i","t","w","z"],animal.update_guessed(letter))
	end
	def test_class_user_guess_false
		animal = Panda.new("matthew")
		animal.guessed = ["a","t","w","m"]
		letter = "f"
		assert_equal(["a","t","w","m","f"],animal.update_guessed(letter))
	end
	def test_class_two_user_guess_false
		animal = Panda.new("matthew")
		animal.guessed = ["o","k","c","z"]
		letter = "x"
		assert_equal(["o","k","c","z","x"],animal.update_guessed(letter))
	end

end