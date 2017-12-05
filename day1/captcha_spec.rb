require './captcha'

RSpec.describe Captcha do
  it "matches 1122 as 12" do
    expect(Captcha::Match.next([1,1,2,2])).to eq([1,2])
  end

  it "summarizes 1122 as 3" do
    expect(Captcha.sum('1122')).to eq(3)
  end
  
  it "matches 11111 as 1111" do
    expect(Captcha::Match.next([1,1,1,1,1])).to eq([1,1,1,1])
  end

  it "summarizes 1111 as 4" do
    expect(Captcha.sum('1111')).to eq(4)
  end

  it "matches 1234 as nothing" do
    expect(Captcha::Match.next([1,2,3,4])).to eq([]) 
  end

  it "summarizes 1234 as 0" do
    expect(Captcha.sum('1234')).to eq(0)
  end

  it "summarizes 91212129 as 9" do
    expect(Captcha.sum('91212129')).to eq(9)
  end
end
