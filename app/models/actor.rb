class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  attr_accessor :first_name, :last_name
  
  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    result = self.characters.map(&:name) + self.shows.map(&:name)
    result.join(" - ") 
  end

end