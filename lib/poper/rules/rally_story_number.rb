module Poper
  module Rules
    class RallyStoryNumber < Rule
      MSG = "Git summary should start with the Story or Defect Identification"

      def check(message)
        MSG unless message.lines.first.match /^[A-Z]{2}\d{6}/
      end
    end
  end
end
