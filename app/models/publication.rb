class Publication < ActiveRecord::Base
  attr_accessible :journal, :title, :year, :professor_ids
  has_and_belongs_to_many :professors
end
