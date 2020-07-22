# frozen_string_literal: true

module Acronym
  def self.abbreviate(phrase)
    phrase
      .gsub(/-/, ' ')
      .split
      .map(&:chr)
      .join
      .upcase
  end
end
