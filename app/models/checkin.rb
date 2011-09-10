class Checkin < ActiveRecord::Base
  scope :nearby_to,
    lambda { |checkin, max_distance|
      where("ST_DWithin(location, ?, ?) AND id != ?", checkin.location, max_distance, checkin.id)
    }
  
  def latitude
    (self.location ||= Point.new).y
  end
  
  def latitude=(value)
    (self.location ||= Point.new).y = value
  end

  def longitude
    (self.location ||= Point.new).x
  end
  
  def longitude=(value)
    (self.location ||= Point.new).x = value
  end
end
