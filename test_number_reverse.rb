class TestNumberReverse
  @@a = 1234567
  @@b = 0


  def getReverseNumber
  #a = 1234567
  #b = 0
  #puts a % 10

    @@my_string = "Hello World"
    # if @my_string.include? "adasdfs"
    #   puts "Hello World"
    # end

    if @@my_string["asdfasdfa"]
      puts "Hello World"
    end

  while(@@a > 0)
    @@b = (@@b*10)+(@@a%10)
    @@a = @@a/10
  end

  return @@b
  end

end

s = TestNumberReverse.new
puts s.getReverseNumber
