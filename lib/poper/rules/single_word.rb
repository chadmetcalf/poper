module Poper
  module Rules
    class SingleWord < Poper::Rule
      MSG = 'Git commit message should consist of more than a single word'

      def check(message)
        MSG if message.split.count < 2
      end
    end
  end
end
