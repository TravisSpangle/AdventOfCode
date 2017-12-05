class Captcha
  module Match
    def self.next(numbers)
      numbers[0...-1].select.with_index do |num, index|
        num == numbers[index+1]
      end
    end
  end

  def self.sum(list)
    numbers = Array(list[-1].to_i) + list.chars.collect(&:to_i)
    Match.next(numbers).reduce(0,:+)
  end
end
