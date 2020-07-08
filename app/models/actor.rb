class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        Actor.all.map {|t| "#{t.first_name} #{t.last_name}" }.join("")
    end

    def list_roles
        #  can list all of its shows and characters
        characters.map{|c|"#{c.name} - #{c.show.name}"}.join("")
    end
  
end