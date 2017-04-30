require_relative 'fib'

no_cache = Fib.new()
no_cache.fibonacci_no_cache(20)

puts "fib with no cache had #{no_cache.my_count} iterations"

with_cache = Fib.new()
with_cache.fibonacci_cache(20)

puts "fib with cache had #{with_cache.my_count} iterations"
puts "the cache contains #{with_cache.cache}"

fib_hash = Hash.new { |my_cache, n| my_cache[n] = fib_hash[n - 1] + fib_hash[n - 2] }

fib_hash[0] = 0
fib_hash[1] = 1

puts "this is the hash method"

(0..20).each do |n|
  print "#{fib_hash[n]}, "
end

puts
puts "the hash method contains #{fib_hash}"