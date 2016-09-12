module Poper
  class Rule
    def self.bank
      @bank ||= []
    end

    def self.inherited(klass)
      bank << klass
    end
  end
end
