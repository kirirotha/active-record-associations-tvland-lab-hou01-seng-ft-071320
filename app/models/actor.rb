class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    x = "#{self.first_name} #{self.last_name}"
  end

  def list_of_roles
    roles = []

      x = "#{character} - #{show}"
      roles << x

    roles
  end

end
