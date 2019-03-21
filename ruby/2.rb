#!/usr/bin/env ruby

def fib(n)
  if n == 1 or n == 2
    n
  else
    fib(n - 2) + fib(n - 1)
  end
end

s = 0
i = 1

while s <= 4 * (10 ** 6) do
  s += fib(i) if fib(i).even?
  i += 1
end

puts s
