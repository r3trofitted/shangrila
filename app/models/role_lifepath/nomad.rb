module RoleLifepath
  class Nomad < Base
    attribute :pack_size, :string
    attribute :kind, :string, default: "land"
    attribute :pack_trade, :string
    attribute :position, :string
    attribute :pack_philosophy, :string
    attribute :pack_enemy, :string
    
    KINDS = %w[air sea land]
    
    PACK_SIZES = {
      1 => :single_tribe,
      2 => :couple_dozen,
      3 => :forty_or_fifty,
      4 => :hundred_or_more,
      5 => :blood_family,
      6 => :affiliated_family
    }
    
    AIR_TRADES = {
      1 => :air_piracy,
      2 => :cargo_transport,
      3 => :passenger_transport,
      4 => :aircraft_protection,
      5 => :smuggling,
      6 => :combat_support
    }
    
    SEA_TRADES = {
      1 => :piracy,
      2 => :cargo_transport,
      3 => :passenger_transport,
      4 => :smuggling,
      5 => :combat_support,
      6 => :submarine_warfare
    }
    
    LAND_TRADES = {
       1 => :gogang,
       2 => :passenger_transport,
       3 => :school,
       4 => :carnival,
       5 => :migrant_farmers,
       6 => :cargo_transport,
       7 => :shipment_protection,
       8 => :smuggling,
       9 => :mercenary_army,
      10 => :work_gang
    }
    
    POSITIONS = {
      1 => :scout,
      2 => :outrider,
      3 => :driver,
      4 => :loadmaster,
      5 => :solo_smuggler,
      6 => :procurement
    }
    
    PACK_PHILOSOPHIES = {
      1 => :good,
      2 => :fair_and_honest,
      3 => :rarely_slips,
      4 => :occasionally_slips,
      5 => :ruthless,
      6 => :evil
    }
    
    PACK_ENEMIES = {
      1 => :organized_crime,
      2 => :boostergangs,
      3 => :drug_runners,
      4 => :dirty_politicians,
      5 => :rival_packs,
      6 => :dirty_cops
    }
  end
end
