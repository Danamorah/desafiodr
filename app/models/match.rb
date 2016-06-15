class Match < ActiveRecord::Base
  belongs_to :round
  belongs_to :user

#  def self.sum
#    $redis.get "count"
#  end

#  def self.create value=1
#    $redis.incr "count", value
#  end

end
