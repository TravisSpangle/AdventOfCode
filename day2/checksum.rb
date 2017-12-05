require 'pry'

class Checksum
  def self.calculate(file:)
    Checksum.new(file:file).greatest_difference
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
end
