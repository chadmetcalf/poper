module Poper
  module Rules
    class SeventyTwoCharLimit < Rule
      MSG = 'Every line of git commit message should be 72 chars or less'
      KEY = :seventy_two_char_limit

      def check(message)
        MSG if message.lines.any? { |line| line.length > 72 }
      end
    end
  end
end
