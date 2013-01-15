class Contestant < ActiveRecord::Base
  attr_accessible :date_added, :description, :first_name, :id, :last_name, :nickname, :avatar
  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>" }
  self.primary_key = "id"
end
