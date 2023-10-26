class RoleLifepath
  include ActiveModel::API
  include ActiveModel::Attributes
  
  def self.load(payload)
    return if payload.blank?
    
    ActiveSupport::JSON.load(payload).symbolize_keys => { role:, **attrs }
    self.for role, **attrs
  end
  
  def self.dump(payload)
    ActiveSupport::JSON.dump(payload)
  end

  def self.for(role, **attrs, &block)
    return if role.blank?
    
    begin 
      klass = const_get(role.to_s.camelize)
    rescue NameError
      raise ArgumentError, "invalid role #{role}"
    end
    
    klass.new(**attrs, &block)
  end
  
  def self.use_relative_model_naming?
    true
  end
  
  def to_partial_path
    "characters/#{role}_lifepath"
  end
  
  # Needed because…
  # ActiveSupport::JSON.dump will call as_json
  # … which, is to_hash doesn't exist, will call instance_values.as_json
  # … which will call instance_variables…
  # … which will include the extra @attributes instance variable added by ActiveModel::Attributes
  # … and we don't want this extra variable
  # def to_hash # TODO: as_json instead? Or move to the .dump method ?
  #   attributes.to_hash.merge(role: role)
  # end
  
  def as_json(options = nil)
    { role:, **attributes }.as_json(options)
  end
  
  def role
    model_name.element
  end
  
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

  class Fixer < RoleLifepath
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
