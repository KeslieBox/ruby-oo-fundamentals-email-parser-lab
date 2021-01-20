# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# def initialize(str)
# @buffer = StringScanner.new(str)
# @tags   = []
# parse
require 'pry'

class EmailAddressParser
    attr_accessor :email_string

    def initialize(email_string)
        @email_string = email_string
    end

    def parse
        email_array = []
        @email_string.split(", ").each do |email_split_1|
            email_split_1.split(" ").each do |email_split_2|
                 email_array << email_split_2
            end
        end
        email_array.uniq
    end
end

