require 'spec_helper'

module Poper
  describe CommitMessageValidator do
    let(:commit) { Rugged::Repository.new('spec/specrepo.git').last_commit}
    let(:rules) { Rule.bank.map(&:new) }
    let(:commit_message) { described_class.new(commit: commit, rules: rules) }

    describe '#valid?' do
      it "text" do
        expect(commit_message.valid?).to be_truthy
      end
    end
  end
end
