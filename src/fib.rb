class Fib
  
  attr_accessor :my_count, :cache
    
  def initialize
    @my_count = 0
    @cache = [0,1] 
  end
   
  def fibonacci_cache(n)
    @my_count += 1
    return @cache[n] if @cache[n]
    @cache[n] = fibonacci_cache(n-1) + fibonacci_cache(n-2)
  end

  def fibonacci_no_cache(n)
    @my_count += 1
    return  n  if n <= 1
    fibonacci_no_cache(n - 1) + fibonacci_no_cache(n - 2)
  end
  
end