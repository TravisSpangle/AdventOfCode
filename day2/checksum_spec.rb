require './checksum'

RSpec.describe Checksum do
  it "calculates by greatest difference" do
    expect(Checksum.calculate(file: "spreadsheet_test.txt")).to eq(18)
  end

  it "calculates by divisible numbers" do
    expect(Checksum.calculate(method: :divisible_numbers, file: "spreadsheet_divisible_test.txt")).to eq(9)
  end
end
