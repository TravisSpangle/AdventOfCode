require './captcha'

RSpec.describe Captcha do
  it "matches 1122 as 12" do
    expect(Match.next([1,1,2,2])).to eq([1,2])
  end

  it "calculatemarizes 1122 as 3" do
    expect(Captcha.calculate(input:'1122')).to eq(3)
  end
  
  it "calculatemarizes 1111 as 4" do
    expect(Captcha.calculate(input:'1111')).to eq(4)
  end

  it "matches 1234 as nothing" do
    expect(Match.next([1,2,3,4])).to eq([]) 
  end

  it "calculatemarizes 1234 as 0" do
    expect(Captcha.calculate(input:'1234')).to eq(0)
  end

  it "calculatemarizes 91212129 as 9" do
    expect(Captcha.calculate(input:'91212129')).to eq(9)
  end

  it "matches 1212 as 1212" do
    expect(Match.half([1,2,1,2])).to eq([1,2,1,2])
  end

  it "calculates  1212 as 6" do
    expect(Captcha.calculate(input: '1212', pattern: :half)).to eq(6)
  end

  it "matches 1221 as nothing" do
    expect(Match.half([1,2,2,1])).to eq([])
  end

  it "calculates  1221 as 0" do
    expect(Captcha.calculate(input: '1221', pattern: :half)).to eq(0)
  end

  it "matches 123425 as 22" do
    expect(Match.half([1,2,3,4,2,5])).to eq([2,2])
  end

  it "calculates 123425 as 4" do
    expect(Captcha.calculate(input: '123425', pattern: :half)).to eq(4)
  end

  it "matches 123123 as 123123" do
    expect(Match.half([1,2,3,1,2,3])).to eq([1,2,3,1,2,3])
  end
  
  it "calculates 123123 as 12" do
    expect(Captcha.calculate(input: '123123', pattern: :half)).to eq(12)
  end

  it "matches 12131415 as 1111" do
    expect(Match.half([1,2,1,3,1,4,1,5])).to eq([1,1,1,1])
  end

  it "calculates 12131415 as 4" do
    expect(Captcha.calculate(input: '12131415', pattern: :half)).to eq(4)
  end
end
