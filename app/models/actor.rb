class Actor < ActiveRecord::Base
  :actor has_many :characters
  :actor has_many :shows through :characters

end
