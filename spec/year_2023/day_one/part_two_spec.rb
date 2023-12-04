# frozen_string_literal: true

require "./challenges/year_2023/day_one/part_two.rb"

RSpec.describe Challenges::Year2023::DayOne::PartTwo do
  subject(:output) { described_class.new(input).output }

  let(:input) do
    <<-EOF
      two1nine
      eightwothree
      abcone2threexyz
      xtwone3four
      4nineeightseven2
      zoneight234
      7pqrstsixteen
    EOF
  end

  it "returns expected_value" do
    expect(output).to eq(281)
  end
end
