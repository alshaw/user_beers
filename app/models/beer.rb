class Beer < ApplicationRecord
  #association
  belongs_to :user
  
  #model.save - validations get called before RAW SQL gets generated
  validates_presence_of :name, :style, :ibu, :alcohol
end
