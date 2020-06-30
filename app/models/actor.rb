class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end

    def list_roles
        character = Character.where(actor_id: self.id)
        show = Show.where(id: character[0].show_id)
        character[0].name + " - " + show[0].name
    end


end
