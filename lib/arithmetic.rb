#!/usr/local/bin/ruby -Kuw
module Kernel

   def ∑(values)
     values.inject(&:+)
   end

   def √(root)
      Math.sqrt(root)
   end
   
   def ∏(values)
     values.inject(:*)
   end
   
   def ∏x(expression, variable, values)
      ∏ (values.map {|value| eval(expression.gsub(variable, value.to_s))})
   end
   
   def ∑x(expression, variable, values)
      ∑ (values.map {|value| eval(expression.gsub(variable, value.to_s))})
   end
    
end

module RMathemata
  module Integer
    require 'mathn'
  
    def gcdn integers
      return self unless integers.any?
      self.gcd integers.shift.gcdn(integers)
    end
  
    def prime_powers
      prime_division.map(&:pop)
    end
  
    def is_powerful?
      return true if self == 1
      prime_powers.min >= 2
    end
  
    def is_perfect_power?
      n = 1
      loop do
        n += 1
        root = self**(1/n)
        return true if  root.is_a?(Integer)
        return false if root < 2
      end
    end
  
    def is_achilles_number?
      is_powerful? and not is_perfect_power?
    end
  
    def euler_totient
      return 1 if self == 1
      self *  ∏x("1 - 1/p", "p", prime_division.map(&:first))
    end
  
    def is_strong_achilles_number?
      is_achilles_number? and euler_totient.is_achilles_number?
    end
  
    def numbers_of_strong_achilles_numbers_below
      1.upto(self).inject(0) {|total, number| total += 1 if number.is_strong_achilles_number? ; total} 
    end
    
    def power_of_2?
     self != 0 && self & (self - 1) == 0
    end
    
  end
  

end

class Integer
  include RMathemata::Integer
end