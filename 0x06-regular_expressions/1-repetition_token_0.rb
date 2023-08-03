#!/usr/bin/env ruby
#a Ruby script that accepts one argument and pass it to a regular expression matching method

puts ARGV[0].scan(/hbttn/).join
puts ARGV[0].scan(/hbtttn/).join
puts ARGV[0].scan(/hbttttn/).join
puts ARGV[0].scan(/hbtttttn/).join
