class Correct < ActiveRecord::Base
  has_many :incorrects, dependent: :destroy
  accepts_nested_attributes_for :incorrects

def to_s
  word
end

end
