class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        roles = Character.where(actor_id: self.id)
        roles.collect do |i|
            "#{i.name} - #{i.show.name}"
        end
    end
  
end