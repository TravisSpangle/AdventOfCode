class Captcha
  def self.calculate(input:, pattern: :next)
    Match.send(pattern, input.chars.collect(&:to_i)).reduce(0,:+)
  end
end

module Match
  def self.next(numbers)
    equal(step:1, list:numbers)
  end

  def self.half(numbers)
    equal(step: numbers.length/2, list:numbers)
  end

  def self.equal(step:,list:)
    list.select.with_index do |number,index|
      number == list.rotate(step+index)[0]
    end
  end
end
