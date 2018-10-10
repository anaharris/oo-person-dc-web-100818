class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def true_or_false(arg)
    if arg > 7
      return true
    else
      return false
    end
  end

  def clean?
    true_or_false(hygiene)
  end

  def happy?
    true_or_false(happiness)
  end

  def happiness=(new_happ)
    if new_happ > 10
      @happiness = 10
    elsif new_happ < 0
      @happiness = 0
    else
      @happiness = new_happ
    end
  end

  def hygiene=(new_hyg)
    if new_hyg > 10
      @hygiene = 10
    elsif new_hyg < 0
      @hygiene = 0
    else
      @hygiene = new_hyg
    end
  end

  def get_paid (salary)
    @bank_account += salary.to_i
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness -= 2
      self.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      friend.happiness += 1
      self.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end
