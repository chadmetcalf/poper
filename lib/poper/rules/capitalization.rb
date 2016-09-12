module Poper
  module Rules
    class Capitalization < Rule
      MSG = 'Git commit summary should start with a capital letter'
      KEY = :capitalization

      def check(commit_message)
        MSG unless commit_message.first_letter == commit_message.first_letter.capitalize
      end
    end
  end
end
