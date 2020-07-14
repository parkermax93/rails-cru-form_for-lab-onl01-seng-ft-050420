class Artist < ApplicationRecord
  has_many :songs 
  
    def to_s
    self.name + " " + self.last_name
  end
end