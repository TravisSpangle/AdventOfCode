require './checksum'

RSpec.describe Checksum do
  it "calculates by greatest difference" do
    expect(Checksum.calculate(file: "spreadsheet_test.txt")).to eq(18)
  end
end
