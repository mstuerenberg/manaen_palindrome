# frozen_string_literal: true

require_relative "manaen_palindrome/version"

class String

  # Returns true if palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in a string.
  def letters
    chars.select { |c| c.match(/[a-z]/i) }.join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.scan(/[a-z]/i).join.downcase
    end

end
