module RoleLifepath
    class Exec
    include ActiveModel::API
    
    attr_accessor :location, :rival, :boss_relation
    
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
