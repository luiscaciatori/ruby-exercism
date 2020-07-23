# frozen_string_literal: true

module Acronym
  def self.abbreviate(phrase)
    phrase
      .split(/[\W]+/)
      .map { |word| word[0].capitalize }
      .join
  end
end
