# frozen_string_literal: true

require "./challenges/year_2023/day_one/part_one.rb"

RSpec.describe Challenges::Year2023::DayOne::PartOne do
  subject(:output) { described_class.new(input).output }

  let(:input) do
    <<-EOF
      1abc2
      pqr3stu8vwx
      a1b2c3d4e5f
      treb7uchet
    EOF
  end

  it "returns expected_value" do
    expect(output).to eq(142)
  end
end
