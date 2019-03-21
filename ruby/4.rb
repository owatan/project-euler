#!/usr/bin/env ruby

Order = 3
max = 0

((10 ** (Order - 1))..(10 ** Order - 1)).each do |i|
  ((10 ** (Order - 1))..(10 ** Order - 1)).each do |j|
    m = i * j
    # max = m if m.to_s == m.to_s.reverse
    max = m if m.to_s == m.to_s.reverse and m > max
  end
end

puts max
