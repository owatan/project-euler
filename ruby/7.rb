#!/usr/bin/env ruby

MAX = 10001
p = []
i = 2

while p.length < MAX
  flag = false

  (2...i).each do |j|
    flag = true if (i % j).zero?
  end

  if flag == false
    # 計算量が重すぎる ...
    p.push(i)
    puts "#{p.length} #{p.max}"
  end

  i += 1
end

puts p.max
