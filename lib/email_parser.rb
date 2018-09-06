# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :string, :emails

  def initialize(string)
    @string = string
    @emails = []

  end


  def parse
    emails = @string.split(/[\s,]/).reject(&:empty?).uniq
  end

end
