module RoleLifepath
  class Fixer < Base
    attribute :kind, :string
    attribute :work_alone, :boolean
    attribute :partner, :string
    attribute :office, :string
    
    KINDS = {
       1 => :gangs_deal_broker,
       2 => :purveyor_of_rarities,
       3 => :purveyor_of_solo_services,
       4 => :night_market_provider,
       5 => :purveyor_of_illegal_resources,
       6 => :purveyor_of_med_resources,
       7 => :night_markets_operator,
       8 => :broker_of_heavy_machinery,
       9 => :combat_zone_broker,
      10 => :agent
    }
    
    PARTNERS = {
      1 => :family_member,
      2 => :old_friend,
      3 => :romantic_partner,
      4 => :mentor,
      5 => :secret_with_mobconnections,
      6 => :secret_with_corp_connections
    }
    
    OFFICES = {
      1 => :none,
      2 => :booth,
      3 => :data_pool_messages,
      4 => :warehouse,
      5 => :abandoned_building,
      6 => :cube_hotel_lobby,
    }
  end
end
