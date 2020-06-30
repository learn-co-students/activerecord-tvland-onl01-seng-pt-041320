class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        list = []
        character = Character.where(show_id: self.id)
        actor = Actor.where(id: character[0].actor_id)
        fullname = actor[0].first_name + " " + actor[0].last_name
        list << fullname
    end
  
end