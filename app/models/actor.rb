class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    chars = self.characters #returns array of instances
    chars.each do |char|
      return "#{char.name} - #{char.show.name}"
    end
  end
end