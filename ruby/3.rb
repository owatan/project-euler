#!/usr/bin/env ruby

a = []
max = 0
N = 600851475143

(1..Math.sqrt(N).to_i).each do |i|
  a.push(i) if N % i == 0
end

a.each do |i|
  flag = false
  # 素数判定のために自身は含めない
  (2...i).each do |j|
    flag = true if i % j == 0
  end

  # flag が false のままであるとき、それは最大の素因数
  # ; 2以上自身未満の数字で割り切れない時
  max = i if flag == false
end

puts max
