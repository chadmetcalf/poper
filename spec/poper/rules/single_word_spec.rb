require 'spec_helper'

module Poper
  module Rules
    describe SingleWord do
      describe '#check' do
        let(:rule) { described_class.new }

        it 'multiple word message' do
          message = 'Implement that feature'
          result = rule.check(message)

          expect(result).to be_nil
        end

        it 'zero word message' do
          message = CommitMessage.new(' ')
          result = rule.check(message)

          expect(result).not_to be_nil
        end

        it 'single word message' do
          message = 'Fix'
          result = rule.check(message)

          expect(result).not_to be_nil
        end
      end
    end
  end
end
