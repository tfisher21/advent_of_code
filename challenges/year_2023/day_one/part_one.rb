# frozen_string_literal: true

module Challenges
  module Year2023
    module DayOne
      class PartOne
        attr_accessor :input, :output
        def initialize(input)
          @input = input.split("\n").map(&:strip)

          @output = calculate_output
        end

        private

        def calculate_output
          input.map do |line|
            line.scan(/[[:digit:]]/).values_at(0, -1).join.to_i
          end.sum
        end
      end
    end
  end
end
