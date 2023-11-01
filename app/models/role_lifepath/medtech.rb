module RoleLifepath
  class Medtech < Base
    
    attribute :kind, :string
    attribute :work_alone, :boolean
    attribute :partner, :string
    attribute :workspace, :string
    attribute :clients, :string
    attribute :supplier, :string
    
    KINDS = {
       1 => :surgeon,
       2 => :general_practitioner,
       3 => :trauma_medic,
       4 => :psychiatrist,
       5 => :cyberpsycho_therapist,
       6 => :ripperdoc,
       7 => :cryosystems_operator,
       8 => :pharmacist,
       9 => :bodysculptor,
      10 => :forensic_pathologist
    }
    
    PARTNERS = {
      1 => :trauma_team_group,
      2 => :old_friend,
      3 => :romantic_partner,
      4 => :family_member,
      5 => :secret_with_mob_connections,
      6 => :secret_with_corporate_connections
    }
    
    WORKSPACES = {
      1 => :like_clockwork,
      2 => :not_state_of_the_art,
      3 => :cryo_equipment_cools_drinks,
      4 => :everything_is_single_use,
      5 => :not_as_clean_as_it_should,
      6 => :meticulously_organized,
    }
    
    CLIENTS = {
      1 => :local_fixers,
      2 => :local_gangers,
      3 => :corporate_execs,
      4 => :local_solos,
      5 => :local_nomads,
      6 => :trauma_team,
    }
    
    SUPPLIERS = {
      1 => :scavenges_combat_zones,
      2 => :scavenges_bodies,
      3 => :local_fixer,
      4 => :corporate_execs,
      5 => :corporate_warehouses,
      6 => :night_markets,
    }
  end
end
