class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        list = Character.where(show_id: self.id)
        list.map do |x|
            "#{x.actor.first_name} #{x.actor.last_name}"
        end
    end
end