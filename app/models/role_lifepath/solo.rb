module RoleLifepath
    class Solo < Base
    attribute :kind, :string
    attribute :morality, :string
    attribute :territory, :string
    attribute :enemy, :string

    KINDS = {
      1 => :bodyguard,
      2 => :street_muscle,
      3 => :corporate_enforcer,
      4 => :black_ops_agent,
      5 => :vigilante,
      6 => :assassin
    }

    MORALITIES = {
      1 => :good,
      2 => :spares_the_innocent,
      3 => :rarely_slips,
      4 => :ruthless,
      5 => :occasionally_slips,
      6 => :evil
    }

    TERRITORIES = {
      1 => :corporate_zone,
      2 => :combat_zones,
      3 => :whole_city,
      4 => :single_corporation,
      5 => :fixer,
      6 => :wherever
    }

    RIVALS = {
      1 => :corporation,
      2 => :boostergang,
      3 => :corrupt_lawmen,
      4 => :rival_corp_solo,
      5 => :fixer,
      6 => :rival_nemesis_solo
    }
    end
end
