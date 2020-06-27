class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    char_name_show = self.characters.map{|character| "#{character.name} - #{character.show.name}"}[0]
  end
end