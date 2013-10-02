class Friend
  def greeting(who = nil)    #set who to nil first in case I don't have any friends
    if who == nil
      "Hello!"
    else
      "Hello, #{who}!"       #string inteperolation in case I have some friends
    end
  end
end

s = Friend.new
puts s.greeting("Freddy")