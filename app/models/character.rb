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
end
