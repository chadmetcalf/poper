require 'spec_helper'

module Poper
  describe Runner do
    describe '#run' do
      let(:runner) { Runner.new(commit, 'spec/specrepo.git') }
      subject { runner.run }
    end
  end
end
