class Friend
  include ActiveModel::API
  
  attr_accessor :name, :connection
  
  validates_presence_of :name, :connection
  
    
  CONNECTIONS = %i[
    like_an_older_sibling
    teacher_or_mentor
    former_lover
    like_a_parent
    like_a_younger_sibling
    partner_or_coworker
    old_enemy
    old_childhood_friend
    someone_from_the_street
    someone_with_a_common_interest
  ]
end
