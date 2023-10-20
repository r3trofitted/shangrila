class Enemy
  include ActiveModel::API
  
  attr_accessor :name, :cause, :wronged_party, :means_of_retaliation, :intensity
  
  validates_presence_of :name, :cause, :wronged_party, :means_of_retaliation, :intensity
  validates_inclusion_of :wronged_party, in: %w[character enemy]
end
