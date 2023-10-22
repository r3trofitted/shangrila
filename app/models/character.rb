class Character < ApplicationRecord
  serialize :friends, coder: Relationships.coder_for(Friend)
  serialize :enemies, coder: Relationships.coder_for(Enemy)
  serialize :tragic_love_affairs, coder: Relationships.coder_for(TragicLoveAffair)
  
  # SMELL: repetitions
  after_initialize do
    self.friends = Relationships.of(Friend) if self.friends.blank?
    self.enemies = Relationships.of(Enemy) if self.enemies.blank?
    self.tragic_love_affairs = Relationships.of(TragicLoveAffair) if self.tragic_love_affairs.blank?
  end
  
  concerning :CreationTables do
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
    
    ORIGINS = {
       1 => :north_american,
       2 => :south_central_american,
       3 => :western_europe,
       4 => :eastern_europe,
       5 => :middle_eastern_north_african,
       6 => :sub_saharan_african,
       7 => :south_asian,
       8 => :south_east_asian,
       9 => :east_asian,
      10 => :oceania_pacific_islander
    }
    
    PERSONALITIES = {
       1 => :shy_and_secretive,
       2 => :rebellious_antisocial_and_violent,
       3 => :arrogant_proud_and_aloof,
       4 => :moody_rash_and_headstrong,
       5 => :picky_fussy_and_nervous,
       6 => :stable_and_serious,
       7 => :silly_and_fluff_headed,
       8 => :sneaky_and_deceptive,
       9 => :intellectual_and_detached,
      10 => :friendly_and_outgoing
    }
    
    CLOTHINGS = {
       1 => :generic_chic,
       2 => :urban_flash,
       3 => :high_fashion,
       4 => :bag_lady_chic,
       5 => :nomad_leathers,
       6 => :gang_colors,
       7 => :businesswear,
       8 => :leisurewear,
       9 => :bohemian,
      10 => :asia_pop
    }
    
    HAIRSTYLES = {
       1 => :mohawk,
       2 => :long_and_ratty,
       3 => :short_and_spiked,
       4 => :wild_and_all_over,
       5 => :bald,
       6 => :striped,
       7 => :wild_colors,
       8 => :neat_and_short,
       9 => :short_and,
      10 => :long_and_straight
    }
    
    AFFECTATIONS = {
       1 => :tattoos,
       2 => :mirrorshades,
       3 => :ritual_scars,
       4 => :spiked_gloves,
       5 => :nose_rings,
       6 => :tongue_or_other_piercings,
       7 => :strange_fingernail_implants,
       8 => :spiked_boots_or_heels,
       9 => :fingerless_gloves,
      10 => :strange_contacts
    }
    
    VALUED_THINGS = {
       1 => :money,
       2 => :honor,
       3 => :your_word,
       4 => :honesty,
       5 => :knowledge,
       6 => :vengeance,
       7 => :love,
       8 => :power,
       9 => :family,
      10 => :friendship
    }
    
    OPINIONS_ON_PEOPLE = {
       [1,2] => :neutral,
           3 => :like,
           4 => :hate,
           5 => :tools,
           6 => :valuable_individuals,
           7 => :obstacles,
           8 => :untrustworthy,
           9 => :wipe_em_all_out,
          10 => :wonderful
    }
    
    VALUED_PEOPLE = {
       1 => :parent,
       2 => :sibling,
       3 => :lover,
       4 => :friend,
       5 => :oneself,
       6 => :pet,
       7 => :mentor,
       8 => :public_figure,
       9 => :personal_hero,
      10 => :no_one
    }
    
    VALUED_POSSESSIONS = {
       1 => :weapon,
       2 => :tool,
       3 => :piece_of_clothing,
       4 => :photograph,
       5 => :book,
       6 => :recording,
       7 => :musical_instrument,
       8 => :piece_of_jewelry,
       9 => :toy,
      10 => :letter
    }
    
    ORIGINAL_BACKGROUNDS = {
       1 => :corporate_execs,
       2 => :corporate_managers,
       3 => :corporate_technicians,
       4 => :nomad_pack,
       5 => :ganger_family,
       6 => :combat_zoners,
       7 => :urban_homeless,
       8 => :megastructure_warren_rats,
       9 => :reclaimers,
      10 => :edgerunners
    }
    
    CHILDHOOD_ENVIRONMENTS = {
       1 => :ran_on_the_street,
       2 => :safe_corp_zone,
       3 => :nomad_pack,
       4 => :nomad_pack_with_roots_in_transport,
       5 => :decaying_neighborhood,
       6 => :the_combat_zone,
       7 => :megastructure,
       8 => :city_taken_over_by_reclaimers,
       9 => :drift_nation,
      10 => :corporate_starscraper,
    }
    
    FAMILY_CRISES = {
       1 => :lost_everything_through_betrayal,
       2 => :lost_everything_through_bad_management,
       3 => :exiled,
       4 => :imprisoned,
       5 => :vanished,
       6 => :killed,
       7 => :involved_in_a_conspiracy,
       8 => :scattered_due_to_misfortune,
       9 => :cursed_with_a_hereditary_feud,
      10 => :inheritor_of_a_family_debt
    }
    
    LIFE_GOALS = {
       1 => :get_rid_of_bad_rep,
       2 => :power,
       3 => :get_off_the_street,
       4 => :cause_pain,
       5 => :forget_the_past,
       6 => :make_them_pay,
       7 => :get_whats_mine,
       8 => :save_someone,
       9 => :gain_fame,
      10 => :become_respected
    }
  end
end
