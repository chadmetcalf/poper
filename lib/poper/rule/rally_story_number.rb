module Poper
  module Rule
    class RallyStoryNumber < Rule
      MSG = "Git Summary doesn't start with the Rally Story Number"

      def check(message)
        MSG unless message.lines.first.match /^[A-Z]{2}\d{6}/
      end
    end
  end
end
