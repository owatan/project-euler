#!/usr/bin/env ruby

s = 0

(1...1000).each do |i|
  s += i if i % 3 == 0 or i % 5 == 0
end

puts s
