class Enemy < Friend
  attr_accessor :cause, :wronged_party, :means_of_retaliation, :intensity
  
  validates_presence_of :cause, :wronged_party, :means_of_retaliation, :intensity
  validates_inclusion_of :wronged_party, in: %w[character enemy]
  
  ORIGINS = %i[
    ex_friend
    ex_lover
    estranged_relative
    childhood_enemy
    person_working_for_you
    person_you_work_for
    partner_or_coworker
    corporate_exec
    government_official
    boosterganger
  ]
  
  CAUSES = %i[
    loss_face_or_status
    loss_of_relative
    major_humiliation
    accused_of_personal_flaw
    betrayed_the_other
    turned_down_the_other
    simple_enmity
    former_romantic_rival
    former_business_rival
    setup
  ]
  
  MEANS_OF_RETALIATION = %i[
    wont_go_out_of_their_way
    themselves
    single_friend
    few_friends
    many_friends
    entire_gang
    local_cops
    small_corporation
    powerful_corporation
    entire_city
  ]
  
  INTENSITIES = %i[
    avoid
    murderous_rage
    backstab
    verbal_attack
    setup
    murder
  ]
end
