require 'spec_helper'

module Poper
  module Rules
    describe Capitalization do
      describe '#check' do
        let(:rule) { Capitalization.new }
        subject { rule.check(message) }

        context 'capitalized message' do
          let(:message) { 'Sample git summary' }
          it { should be_nil }
        end

        context 'non-capitalized message' do
          let(:message) { 'sample git summary' }
          it { should_not be_nil }
        end
      end
    end
  end
end
