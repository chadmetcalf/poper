require 'spec_helper'

module Poper
  module Rules
    describe FiftyCharSummary do
      describe '#check' do
        let(:rule) { described_class.new }

        it '50 character summary passes' do
          message = CommitMessage.new('Implement that feature - really really really well')
          result = rule.check(message)

          expect(result).to be_nil
        end

        it '51 character summary does not pass' do
          message = CommitMessage.new('Implement that feature - really really really well.')
          result = rule.check(message)

          expect(result).not_to be_nil
        end
      end
    end
  end
end
