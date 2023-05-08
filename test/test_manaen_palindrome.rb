# frozen_string_literal: true

require "test_helper"

class TestManaenPalindrome < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ManaenPalindrome::VERSION
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_puncttuation
    assert "Madam, I'm Adam.".palindrome?
  end

end
