class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    #Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
    def full_name
     "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        #self.characters #=> [CharacterObjs]returns array of char objects assoc. to the actor
        # iterate over list of character objects and return character.name and character.show.name
        self.characters.collect do |character|
            "#{character.name} - #{character.show.name}" 
         end
    end
   
end
