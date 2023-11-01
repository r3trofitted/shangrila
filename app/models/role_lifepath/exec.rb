module RoleLifepath
    class Exec < Base
      
    attribute :sector, :string
    attribute :division, :string
    attribute :morality, :string
    attribute :location, :string
    attribute :rival, :string
    attribute :boss_relation, :string
    
    SECTORS = {
       1 => :financial,
       2 => :media,
       3 => :cybertech,
       4 => :biotech,
       5 => :consumables,
       6 => :energy,
       7 => :robotics,
       8 => :corporate_services,
       9 => :consumer_services,
      10 => :real_estate
    }
    
    DIVISIONS = {
      1 => :procurement,
      2 => :manufacturing,
      3 => :r_and_d,
      4 => :hr,
      5 => :pr,
      6 => :m_and_a
    }
    
    MORALITIES = {
      1 => :good,
      2 => :mostly_fair,
      3 => :rarely_unethical,
      4 => :occasionally_unethical,
      5 => :ruthless,
      6 => :evil
    }
    
    LOCATIONS = {
      1 => :one_city,
      2 => :several_cities,
      3 => :statewide,
      4 => :national,
      5 => :international_some_offices,
      6 => :international_offices_everywhere
    }
    
    RIVALS = {
      1 => :rival_corp,
      2 => :law_enforcement,
      3 => :local_media,
      4 => :internal_feuds,
      5 => :local_government,
      6 => :international_corporations
    }
    
    BOSS_RELATIONS = {
      1 => :mentor,
      2 => :trusting,
      3 => :micromanager,
      4 => :psycho,
      5 => :ally,
      6 => :rival
    }
  end
end
