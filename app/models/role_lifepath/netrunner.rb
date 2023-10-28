module RoleLifepath
  class Netrunner < Base
    attribute :kind, :string
    attribute :work_alone, :boolean
    attribute :partner, :string
    attribute :workspace, :string
    attribute :clients, :string
    attribute :supplier, :string
    attribute :enemy, :string
    
    KINDS = {
      1 => :freelancer,
      2 => :corporate_runner,
      3 => :hacktivist,
      4 => :offender,
      5 => :team_freelancer,
      6 => :solo_freelancer
    }
    
    PARTNERS = {
      1 => :family_member,
      2 => :old_friend,
      3 => :romantic_partner,
      4 => :secret_possibly_rogue_ai,
      5 => :secret_with_mobconnections,
      6 => :secret_with_corporate_connections
    }
    
    WORKSPACES = {
      1 => :screens_everywhere,
      2 => :better_in_virtuality,
      3 => :filthy_bed,
      4 => :corporate,
      5 => :minimalist,
      6 => :everywhere
    }
    
    CLIENTS = {
      1 => :local_fixers,
      2 => :local_gangers,
      3 => :corporate_execs,
      4 => :local_solos,
      5 => :local_nomads,
      6 => :you_work_for_yourself
    }
    
    SUPPLIERS = {
      1 => :scavenges_combat_zones,
      2 => :loot_enemies,
      3 => :local_fixer,
      4 => :corporate_execs,
      5 => :corporate_warehouses,
      6 => :night_markets
    }
    
    ENEMIES = {
      1 => :rogue_ai,
      2 => :rival_netrunners,
      3 => :corporates,
      4 => :lawmen,
      5 => :old_clients,
      6 => :fixer
    }
  end
end
