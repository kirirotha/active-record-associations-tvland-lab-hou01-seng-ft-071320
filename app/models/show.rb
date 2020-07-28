eclass Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = self.characters.map |c|
      "#{c.first_name} #{c.last_name}"
    end
    actors
  end


end
