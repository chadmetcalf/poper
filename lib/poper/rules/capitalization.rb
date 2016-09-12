module Poper
  module Rules
    class Capitalization < Rule
      MSG = 'Git commit summary should start with a capital letter'

      def check(message)
        MSG unless message[0] == message[0].capitalize
      end
    end
  end
end
