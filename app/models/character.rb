class Character < ActiveRecord::Base
    # belongs_to is singular
    belongs_to :actor
    belongs_to :show
  
    def say_that_thing_you_say
        # has a catchphrase
        "#{self.name} always says: #{self.catchphrase}"
    end
end