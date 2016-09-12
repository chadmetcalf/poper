module Poper
  module Rules
    class FiftyCharSummary < Rule
      MSG = 'Git commit message summary (first line) should be 50 chars or less'
      KEY = :fifty_char_summary

      def check(message)
        MSG if message.lines.first.length > 50
      end
    end
  end
end
