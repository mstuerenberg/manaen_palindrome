# frozen_string_literal: true

require_relative "manaen_palindrome/version"

module ManaenPalindrome
   # Returns true if palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include ManaenPalindrome
end

class Integer
  include ManaenPalindrome
end
