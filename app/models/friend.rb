class Friend
  include ActiveModel::API
  
  attr_accessor :name, :connection
  
  validates_presence_of :name, :connection
end
