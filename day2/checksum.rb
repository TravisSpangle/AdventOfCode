require 'pry'

class Checksum
  def self.calculate(file:, method: :greatest_difference)
    Checksum.new(file:file).send(method)
  end

  attr_reader :file
  def initialize(file:)
    @file = file
  end

  def greatest_difference
    total = 0
    File.open(self.file).each do |line|
      numbers = line.split(' ').map(&:to_i)
      total += numbers.max - numbers.min
    end
    total
  end

  def divisible_numbers
    total = 0
    File.open(self.file).each do |line|
      numbers = line.split(' ').map(&:to_i)
      matches = Finder.divisible(numbers) 
      total += matches.first / matches.last
    end
    total
  end
end

module Finder
  def self.divisible(list)
    num = list.pop
    loop do
      return 0 if num.nil?

      list.each do |compare|
        return [num, compare] if (num % compare).zero?
        return [compare, num] if (compare % num).zero?
      end

      num = list.pop
    end
  end
end
