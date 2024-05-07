# frozen_string_literal: true

require_relative "stringCalculator/version"

module StringCalculator
  class Error < StandardError; end

  def self.add(input)
    return  0 if input.empty?
    raise_if_negatives_present(input) if input.include?("-")
    numbers = digits(input)
    array_sum(numbers)
  end

  def self.digits(input)
    input.gsub(regular_expression, delimiter).split(delimiter).reject(&:empty?).map(&:to_i)
  end

  def self.delimiter
    ','
   end

  def self.array_sum(numbers)
    sum = 0
    numbers.each { |x| sum+=x if x < 1001 }
    sum
   end

  def self.raise_if_negatives_present(input)
    negativies = digits(input).select{|x| x < 0}
    raise "Negativies not allowed:#{negativies.join(',')}" if negativies.any?
   end
 
   def self.regular_expression
    /[\n`~!@#$%^&*()_|+\=?;:'",.<>\{\}\[\]\\\/]/
   end
  
end
