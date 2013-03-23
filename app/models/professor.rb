class Professor < ActiveRecord::Base
  attr_accessible :institution, :name
  has_and_belongs_to_many :publications
end
