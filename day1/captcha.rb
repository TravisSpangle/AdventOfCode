class Captcha
  def self.calculate(input:, pattern: :next)
    Match.send(pattern, input.chars.collect(&:to_i)).reduce(0,:+)
  end
end

module Match
  def self.next(numbers)
    equal(step:1, list:numbers)
  end

  def self.equal(step:,list:)
    reference = list.dup
    list.select do |number|
      number == reference.rotate!(step)[0]
    end
  end
end
