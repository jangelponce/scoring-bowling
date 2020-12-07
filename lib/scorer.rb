require "csv"
require_relative "scorer/reader.rb"

module Scorer
  class Base
    attr_accessor :scores

    def initialize scores = []
      @scores = scores
    end
  end
end