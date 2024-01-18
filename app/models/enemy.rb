class Enemy < Friend
  attr_accessor :cause, :wronged_party, :means_of_retaliation, :intensity

  validates_presence_of :cause, :wronged_party, :means_of_retaliation, :intensity
  validates_inclusion_of :wronged_party, in: %w[character enemy]

  ORIGINS = {
     1 => :ex_friend,
     2 => :ex_lover,
     3 => :estranged_relative,
     4 => :childhood_enemy,
     5 => :person_working_for_you,
     6 => :person_you_work_for,
     7 => :partner_or_coworker,
     8 => :corporate_exec,
     9 => :government_official,
    10 => :boosterganger
  }

  CAUSES = {
     1 => :loss_face_or_status,
     2 => :loss_of_relative,
     3 => :major_humiliation,
     4 => :accused_of_personal_flaw,
     5 => :betrayed_the_other,
     6 => :turned_down_the_other,
     7 => :simple_enmity,
     8 => :former_romantic_rival,
     9 => :former_business_rival,
    10 => :setup
  }

  MEANS_OF_RETALIATION = {
     1 => :wont_go_out_of_their_way,
     2 => :themselves,
     3 => :single_friend,
     4 => :few_friends,
     5 => :many_friends,
     6 => :entire_gang,
     7 => :local_cops,
     8 => :small_corporation,
     9 => :powerful_corporation,
    10 => :entire_city
  }

  INTENSITIES = {
    [1, 2] => :avoid,
    [3, 4] => :murderous_rage,
    [5, 6] => :backstab,
    [7, 8] => :verbal_attack,
        9 => :setup,
       10 => :murder
  }
end
