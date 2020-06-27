class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        name = self
        "#{name.first_name}" + " #{name.last_name}"
    end

    def list_roles
        character = self.characters.map{|character| character.name}
        show = self.shows.map{|show| show.name}
        "#{character[0]} - #{show[0]}"
    end








end