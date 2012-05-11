class Thing < ActiveRecord::Base
  attr_accessible :title, :meta_type, :meta_type_id
  validates_presence_of :title

  meta_typed :properties

end
