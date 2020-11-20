# your code goes here
class Person
attr_accessor :bank_account, :happiness, :hygiene 
attr_reader :name
    def initialize(name)
        @name = name
        @bank_account =25
        @happiness = 8
        @hygiene = 8

    end

    def happiness=(hap)
        @happiness = hap
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(hyg)
      @hygiene = hyg
      @hygiene = 10 if @hygiene > 10
      @hygiene = 0 if @hygiene < 0
    end

    def happy?
      if  @happiness > 7
        true
      else
        false
      end
    end

      def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        @hygiene = 10 if @hygiene > 10
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
        
    

    def work_out
        self.hygiene -= 3
        @hygiene = 0 if @hygiene < 0
        self.happiness += 2
        @happiness = 10 if @happiness > 10
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
            "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
          objects.each { |o| o.happiness -= 2}
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          objects.each { |o| o.happiness += 1}
          first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
      end
                     
        
end

               # def start_conversation(person, topic)
        #    self.happiness -= 2
        #    person.happiness -= 2
        #    if topic = "politics"
        #     "blah blah partisan blah lobbyist"
        #    elsif topic = "weather" self.happiness and person.happiness += 1
        #     "blah blah sun blah rain"
        #    end
        # end



