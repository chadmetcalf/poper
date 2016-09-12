module Poper
  class CommitMessageValidator < SimpleDelegator
    def initialize(commit: commit, rules: rules)
      @commit = commit
      @rules = rules
      super(commit.message)
    end

    def inspect
      "#<#{name}>"
    end

    def commit_oid
      @commit.oid
    end

    def first_letter
      chr
    end

    def first_line
      lines.first
    end

    def prefix
      first_line.match(/^/)
    end

    def violations
      @violations ||= validate
    end

    def valid?
      binding.pry
      violations.empty?
    end

    private

    def validate
      @rules.map do |rule|
        rule.check(self)
      end.compact
    end
  end
end
