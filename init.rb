require_relative 'lib/fibonacci'

fib = Fibonacci.new(:size => 20)

puts fib.getSeries().join(" ")