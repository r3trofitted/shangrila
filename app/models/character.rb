class Character < ApplicationRecord
  serialize :friends, coder: Relationships.coder_for(Friend)
  serialize :enemies, coder: Relationships.coder_for(Enemy)
  
  after_initialize do
    self.friends = Relationships.of(Friend) if self.friends.blank?
    self.enemies = Relationships.of(Enemy) if self.enemies.blank?
  end
  
  ROLES = %i[
    exec
    fixer
    lawman
    media
    medtech
    netrunner
    nomad
    rockerboy
    solo
    tech
  ]
  
  ORIGINS = %i[
    north_american
    south/central_american
    western_europe
    eastern_europe
    middle_eastern/north_african
    sub-saharan_african
    south_asian
    south-east_asian
    east_asian
    oceania/pacific_islander
  ]
  
  PERSONALITIES = %i[
    shy_and_secretive
    rebellious_antisocial_and_violent
    arrogant_proud_and_aloof
    moody_rash_and_headstrong
    picky_fussy_and_nervous
    stable_and_serious
    silly_and_fluff-headed
    sneaky_and_deceptive
    intellectual_and_detached
    friendly_and_outgoing
  ]
  
  CLOTHINGS = %i[
    generic_chic
    urban_flash
    high_fashion
    bag_lady_chic
    nomad_leathers
    gang_colors
    businesswear
    leisurewear
    bohemian
    asia_pop
  ]
  
  HAIRSTYLES = %i[
    mohawk
    long_and_ratty
    short_and_spiked
    wild_and_all_over
    bald
    striped
    wild_colors
    neat_and_short
    short_and
    long_and_straight
  ]
  
  AFFECTATIONS = %i[
    tattoos
    mirrorshades
    ritual_scars
    spiked_gloves
    nose_rings
    tongue_or_other_piercings
    strange_fingernail_implants
    spiked_boots_or_heels
    fingerless_gloves
    strange_contacts
  ]
  
  VALUED_THINGS = %i[
    money
    honor
    your_word
    honesty
    knowledge
    vengeance
    love
    power
    family
    friendship
  ]
  
  OPINIONS_ON_PEOPLE = %i[
    neutral
    like
    hate
    tools
    valuable_individuals
    obstacles
    untrustworthy
    wipe_em_all_out
    wonderful
  ]
  
  VALUED_PEOPLE = %i[
    parent
    sibling
    lover
    friend
    oneself
    pet
    mentor
    public_figure
    personal_hero
    no_one
  ]
  
  VALUED_POSSESSIONS = %i[
    weapon
    tool
    piece_of_clothing
    photograph
    book
    recording
    musical_instrument
    piece_of_jewelry
    toy
    letter
  ]
  
  ORIGINAL_BACKGROUNDS = %i[
    corporate_execs
    corporate_managers
    corporate_technicians
    nomad_pack
    ganger_family
    combat_zoners
    urban_homeless
    megastructure_warren_rats
    reclaimers
    edgerunners
  ]
  
  CHILDHOOD_ENVIRONMENTS = %i[
    ran_on_the_street
    safe_corp_zone
    nomad_pack
    nomad_pack_with_roots_in_transport
    decaying_neighborhood
    the_combat_zone
    megastructure
    city_taken_over_by_reclaimers
    drift_nation
    corporate_starscraper
  ]
  
  FAMILIY_CRISES = %i[
    lost_everything_through_betrayal
    lost_everything_through_bad_management
    exiled
    imprisoned
    vanished
    killed
    involved_in_a_conspiracy
    scattered_due_to_misfortune
    cursed_with_a_hereditary_feud
    inheritor_of_a_family_debt
  ]
  
  FRIEND_RELATIONSHIPS = %i[
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
