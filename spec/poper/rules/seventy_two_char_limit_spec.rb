require 'spec_helper'

module Poper
  module Rules
    describe SeventyTwoCharLimit do
      describe '#check' do
        let(:rule) { described_class.new }

        it 'seventy-one char line' do
          message = CommitMessage.new('Implement that feature - really really really well

Write your commit message in the imperative: "Fix bug", not "Fixed bug"')
          result = rule.check(message)

          expect(result).to be_nil
        end

        it 'seventy-three char line' do
          message = CommitMessage.new('Implement that feature - really really really well

Write your commit message in the imperative: "Fix bugs", not "Fixed bugs"')
          result = rule.check(message)

          expect(result).not_to be_nil
        end
      end
    end
  end
end
