# frozen_string_literal: true

module Challenges
  module Year2023
    module DayOne
      class PartTwo
        attr_accessor :input, :output

        VALID_NUMBERS = /(?=(one|two|three|four|five|six|seven|eight|nine|ten|0|1|2|3|4|5|6|7|8|9))/

        VALID_NUMBER_MAP = {
          "zero"  => 0,
          "one"   => 1,
          "two"   => 2,
          "three" => 3,
          "four"  => 4,
          "five"  => 5,
          "six"   => 6,
          "seven" => 7,
          "eight" => 8,
          "nine"  => 9,
        }

        def initialize(input)
          @input = input.split("\n").map(&:strip)

          @output = calculate_output
        end

        private

        def calculate_output
          input.sum do |line|
            line.scan(VALID_NUMBERS).flatten.values_at(0, -1).map do |num|
              VALID_NUMBER_MAP.key?(num) ? VALID_NUMBER_MAP[num] : num
            end.join.to_i
          end
        end
      end
    end
  end
end
