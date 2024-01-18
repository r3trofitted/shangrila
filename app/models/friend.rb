class Friend
  include ActiveModel::API

  attr_accessor :name, :origin

  validates_presence_of :origin, :nature

  ORIGINS = {
     1 => :like_an_older_sibling,
     2 => :teacher_or_mentor,
     3 => :former_lover,
     4 => :like_a_parent,
     5 => :like_a_younger_sibling,
     6 => :partner_or_coworker,
     7 => :old_enemy,
     8 => :old_childhood_friend,
     9 => :someone_from_the_street,
    10 => :someone_with_a_common_interest
  }
end
