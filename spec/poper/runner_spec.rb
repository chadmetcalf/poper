require 'spec_helper'

module Poper
  describe Runner do
    let(:runner) { Runner.new('d0fa2b8', 'spec/specrepo.git') }

    describe '#run' do
      it "text" do
        expect(runner.run).to be_nil
      end
    end
  end
end
