class Greeter
  def greet
    smiley = Smiley.new
    "Hello #{smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end

# greeter = Greeter.new
# puts greeter.greet

# Smiley has no dependencies. Greeter depends on Smiley, and there's no easy way of sparating them out.
# The dependency is hard coded. We might say that Greeter is tightly coupled to Smiley.
# We can't call Greeter#greet without calling Smiley#get. That means if Smiley breaks,
# then our tests for Greeter break — even when Greeter is doing exactly what it is supposed to.
# This makes it harder to track down bugs.
# But we can rearrange the code like this:

class Greeter
  def initialize(smiley = Smiley.new)
    @smiley = smiley
  end

  def greet
    "Hello #{@smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end
