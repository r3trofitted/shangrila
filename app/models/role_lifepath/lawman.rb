module RoleLifepath
  class Lawman < Base
    
    attribute :position, :string
    attribute :jurisdiction, :string
    attribute :corruption_level, :string
    attribute :enemy, :string
    attribute :target, :string
    
    POSITIONS = {
      1 => :guard,
      2 => :beat,
      3 => :criminal_investigation,
      4 => :swat,
      5 => :motor_patrol,
      6 => :internal_affairs
    }
    
    JURISDICTIONS = {
      1 => :corporate_zones,
      2 => :patrol_zone,
      3 => :combat_zones,
      4 => :outer_city,
      5 => :recovery_zones,
      6 => :open_highways
    }
    
    CORRUPTION_LEVELS = {
      1 => :fair_and_ethical,
      2 => :fair_but_hard,
      3 => :rarely_slips,
      4 => :occasionally_slips,
      5 => :ruthless,
      6 => :totally_corrupt
    }
    
    ENEMIES = {
      1 => :organized_crime,
      2 => :boostergangs,
      3 => :police_accountability_group,
      4 => :dirty_politicians,
      5 => :smugglers,
      6 => :street_criminals
    }
    
    TARGETS = {
      1 => :organized_crime,
      2 => :boostergangs,
      3 => :drug_runners,
      4 => :smugglers,
      5 => :dirty_politicians,
      6 => :street_crime
    }
  end
end
