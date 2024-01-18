module RoleLifepath
  class Tech < Base
    attribute :kind, :string
    attribute :work_alone, :boolean
    attribute :partner, :string
    attribute :workspace, :string
    attribute :clients, :string
    attribute :supplier, :string
    attribute :enemy, :string

    KINDS = {
       1 => :cyberware_technician,
       2 => :vehicle_mechanic,
       3 => :jack_of_all_trades,
       4 => :small_electronics_technician,
       5 => :weaponsmith,
       6 => :crazy_inventor,
       7 => :robot_and_drone_mechanic,
       8 => :heavy_machinery_mechanic,
       9 => :scavenger,
      10 => :nautical_mechanic
    }

    PARTNERS = {
      1 => :family_member,
      2 => :old_friend,
      3 => :romantic_partner,
      4 => :mentor,
      5 => :secret_with_mob_connections,
      6 => :secret_with_corp_connections
    }

    WORKSPACES = {
      1 => :a_mess,
      2 => :still_a_nightmare,
      3 => :totally_digital,
      4 => :agent,
      5 => :keep_everything,
      6 => :undecipherable
    }

    CLIENTS = {
      1 => :local_fixers,
      2 => :local_gangers,
      3 => :corporate_execs,
      4 => :local_solos,
      5 => :local_nomads,
      6 => :work_for_yourself
    }

    SUPPLIERS = {
      1 => :scavenges_combat_zones,
      2 => :scavenge_bodies,
      3 => :local_fixer,
      4 => :corporate_execs,
      5 => :corporate_warehouses,
      6 => :night_markets
    }

    ENEMIES = {
      1 => :gangers,
      2 => :rival_about_customers,
      3 => :execs,
      4 => :larger_manufacturer,
      5 => :old_client,
      6 => :rival_about_resources
    }
  end
end
