module RoleLifepath
  class Media < Base
    
    attribute :kind, :string
    attribute :channel, :string
    attribute :ethics, :string
    attribute :stories, :string
    
    KINDS = {
      1 => :blogger,
      2 => :writer,
      3 => :videographer,
      4 => :documentarian,
      5 => :investigative_reporter,
      6 => :street_scribe
    }
    
    CHANNELS = {
      1 => :monthly_magazine,
      2 => :blog,
      3 => :mainstream_vid_feed,
      4 => :news_channel,
      5 => :book_sales,
      6 => :screamsheets
    }
    
    ETHICS = {
      1 => :fair_and_honest,
      2 => :fair_but_iffy,
      3 => :rarely_slips,
      4 => :occasionally_slips,
      5 => :ruthless,
      6 => :totally_corrupt
    }
    
    STORIES = {
      1 => :political_intrigue,
      2 => :ecological_impact,
      3 => :celebrity_news,
      4 => :corporate_takedowns,
      5 => :editorials,
      6 => :propaganda
    }
  end
end
