#!/usr/bin/env ruby

MAX = 1000
m = 0

(1..MAX).each do |a|
  (a..MAX).each do |b|
    (b..MAX).each do |c|
      m = a * b * c if a + b + c == 1000 and a ** 2 + b ** 2 == c ** 2
    end
  end
end

puts m
