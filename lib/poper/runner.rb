require 'ostruct'

module Poper
  class Runner
    def initialize(commit, repo_path = '.')
      @repo = Rugged::Repository.new(repo_path)
      merge_base = @repo.merge_base(commit, commit) # HACK: to make refs work
      @commit = @repo.lookup(merge_base)
    end

    def run
      commit_messages.flat_map { |commit_message| check(commit_message) }.compact
    end

    private

    def check(commit_message)
      return nil if commit_message.valid?

      commit_message.violations.map do |violation_message|
        OpenStruct.new(commit: commit_message.commit_oid, message: violation_message)
      end
    end

    def rules
      @rules ||= Rule.bank.map(&:new)
    end

    def commit_messages
      @commit_messages ||= commits.map do |commit|
        CommitMessageValidator.new(commit: commit, rules: rules)
      end
    end

    def commits
      @commits ||= begin
        walker.reset
        walker.push(@repo.last_commit)
        walker.take_while { |c| c.oid != @commit.oid } << @commit
      end
    end

    def walker
      @walker ||= Rugged::Walker.new(@repo)
    end
  end
end
