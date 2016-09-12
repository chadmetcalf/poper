require 'spec_helper'

module Poper
  module Rules
    describe RallyStoryNumber do
      describe '#check' do
        let(:subject) { RallyStoryNumber.new }

        context 'has a valid' do
          it 'story number' do
            git_msg = 'US123456'
            result = subject.check(git_msg)

            expect(result).to be_nil
          end

          it 'defect number' do
            git_msg = 'US123456'
            result = subject.check(git_msg)

            expect(result).to be_nil
          end
        end

        it 'has an invalid number' do
          git_msg = 'XXxxxxx'
          result = subject.check(git_msg)

          expect(result).not_to be_nil
        end
      end
    end
  end
end
