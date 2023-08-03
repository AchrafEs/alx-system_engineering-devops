#!/usr/bin/env ruby

def match_school(text)
  regex = /School/
  match = text.match(regex)
  puts match ? match[0] : ''
end

if __FILE__ == $0
  if ARGV.empty?
    puts "Usage: #{$0} <text>"
  else
    match_school(ARGV[0])
  end
end
