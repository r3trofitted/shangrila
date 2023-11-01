module RoleLifepath
  class Rockerboy < Base
    
    attribute :kind, :string
    attribute :currently_in_a_band, :boolean
    attribute :formerly_in_a_band, :boolean
    attribute :reason_for_leaving, :string
    attribute :venues, :string
    attribute :enemy, :string
    
    KINDS = {
       1 => :musician,
       2 => :slam_poet,
       3 => :street_artist,
       4 => :performance_artist,
       5 => :comedian,
       6 => :orator,
       7 => :politico,
       8 => :rap_artist,
       9 => :dj,
      10 => :idoru
    }
    
    REASONS_FOR_LEAVING = {
      1 => :jerk,
      2 => :sleeping_around,
      3 => :group_got_killed,
      4 => :group_was_murdered,
      5 => :group_broke_up,
      6 => :own_choice
    }
    
    VENUES = {
      1 => :alternative_cafes,
      2 => :private_clubs,
      3 => :seedy_dive_bars,
      4 => :guerrilla_performances,
      5 => :nightclubs,
      6 => :data_pool
    }
    
    ENEMIES = {
      1 => :old_group_member,
      2 => :rivals,
      3 => :corpos,
      4 => :critics,
      5 => :older_media_star,
      6 => :romantic_interest
    }
  end
end
