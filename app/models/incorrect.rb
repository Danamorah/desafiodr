class Incorrect < ActiveRecord::Base
  belongs_to :correct

def to_s
  word
end

end
