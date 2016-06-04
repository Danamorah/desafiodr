class Match < ActiveRecord::Base
  belongs_to :round

#  def self.sum
#    $redis.get "count"
#  end

#  def self.create value=1
#    $redis.incr "count", value
#  end

end
