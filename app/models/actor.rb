class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    x = "#{actor.first_name} #{actor.last_name}"
  end

end
