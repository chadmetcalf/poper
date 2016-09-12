require 'spec_helper'

module Poper
  module Rules
    describe Capitalization do
      describe '#check' do
        let(:rule) { Capitalization.new }

        it 'capitalized message' do
          message = CommitMessage.new('Sample git summary')
          result = rule.check(message)

          expect(result).to be_nil
        end

        it 'non-capitalized message' do
          message = CommitMessage.new('sample git summary')
          result = rule.check(message)

          expect(result).not_to be_nil
        end
      end
    end
  end
end
