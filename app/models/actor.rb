class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    x = "#{self.first_name} #{self.last_name}"
  end

  def list_of_roles
    roles = []
    self.characters.each do |c|
      x = "#{c.name} - #{c.show}"
      roles << x
    end
    roles
  end

end
