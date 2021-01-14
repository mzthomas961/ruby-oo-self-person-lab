require "pry"
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end
    
    def happiness 
       @happiness = 10 if @happiness > 10
       @happiness = 0 if @happiness <0
       @happiness
    end 
    def hygiene 
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene <0
        @hygiene
     end 
    def clean?
        if self.hygiene > 7
            true
        else false
        end
    end
    def happy?
        if self.happiness >7
            true
        else
            false
        end
    end
    def get_paid(salary)
        self.bank_account = self.bank_account + salary
         'all about the benjamins'
    end
    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

def start_conversation(friend,topic)
    if topic == "politics"
        self.happiness = self.happiness - 2
        friend.happiness = friend.happiness - 2
        "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
        self.happiness = self.happiness + 1
        friend.happiness = friend.happiness + 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
end