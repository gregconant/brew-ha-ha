class Contestant < ActiveRecord::Base
  attr_accessible :date_added, :description, :first_name, :id, :last_name, :nickname
  self.primary_key = "id"
end
