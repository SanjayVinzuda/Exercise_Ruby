module BookKeeping
  VERSION = 2
end

class Raindrops
  def self.convert(no)
    @number = Array.new
    if no == 1
      # puts "#{no}"
      return no.to_s
    else
      p = 2
      @prime_array = Array.new
      # @temp_array = Array.new
      for i in 1..no
        if no % p == 0
          @prime_array.push(p)
          no /=p
        else
          p += 1
        end
      end

      @prime_array.each do |prime|
        puts ".....#{prime}"
      end

      # @temp_array.each do |prime|
      #   puts ".....#{prime}"
      # end

      @raindrop_string = Array.new

      @mul = 1
      @prime_array.each do |prime|
        if prime == 3
          puts "----====--"
          @raindrop_string.push("Pling")
        elsif prime == 5
          @raindrop_string.push("Plang")
        elsif prime == 7
          @raindrop_string.push("Plong")
        else
          @mul*=prime
          @prime_array.push(@mul)
        end
      end

      @string = ""

      @raindrop_string.uniq.each do |prime|
        @string  << prime
      end
    print "\n"
  end
  @string
end

end
