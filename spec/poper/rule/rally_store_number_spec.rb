require 'spec_helper'

module Poper
  module Rule
    describe RallyStoryNumber do
      describe '#check' do
        let(:rule) { RallyStoryNumber.new }
        subject { rule.check(msg) }

        context 'has a valid story number' do
          let(:msg) { 'US123456' }
          it { should be_nil }
        end

        context 'has an invalid story number' do
          let(:msg) { 'USXXXXX' }
          it { should match "Git Summary doesn't start with the Rally Story Number" }
        end
      end
    end
  end
end
