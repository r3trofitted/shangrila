class Character < ApplicationRecord
  ROLES = %i[
    exec
    fixer
    lawman
    media
    medtech
    netrunner
    nomad
    rockerboy
    solo
    tech
  ]
  
  ORIGINS = %i[
    north_american
    south/central_american
    western_europe
    eastern_europe
    middle_eastern/north_african
    sub-saharan_african
    south_asian
    south-east_asian
    east_asian
    oceania/pacific_islander
  ]
  
  PERSONALITIES = %i[
    shy_and_secretive
    rebellious_antisocial_and_violent
    arrogant_proud_and_aloof
    moody_rash_and_headstrong
    picky_fussy_and_nervous
    stable_and_serious
    silly_and_fluff-headed
    sneaky_and_deceptive
    intellectual_and_detached
    friendly_and_outgoing
  ]
end
