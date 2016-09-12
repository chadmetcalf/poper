require 'spec_helper'

module Poper
  module Rules
    describe Generic do
      describe '#check' do
        let(:rule) { described_class.new }

        it 'non-banned commit message' do
          message = 'Implement that feature'
          result = rule.check(message)

          expect(result).to be_nil
        end

        context 'banned commit messages' do
          it ' fix' do
            message = ' fix'
            result = rule.check(message)

            expect(result).not_to be_nil
          end

          it 'Oops ' do
            message = ' Oops'
            result = rule.check(message)

            expect(result).not_to be_nil
          end

          it ' ChaNges ' do
            message = ' ChaNges'
            result = rule.check(message)

            expect(result).not_to be_nil
          end

          it 'fix tests' do
            message = 'fix tests'
            result = rule.check(message)

            expect(result).not_to be_nil
          end

          it 'oops fixes' do
            message = "oops\n\nfixes"
            result = rule.check(message)

            expect(result).not_to be_nil
          end

          it 'oops, fix tests' do
            message = 'oops, fix tests'
            result = rule.check(message)

            expect(result).not_to be_nil
          end
        end
      end
    end
  end
end
