class Quote < ActiveRecord::Base
  include PgSearch
  belongs_to :tag
  
  pg_search_scope :search_by_word, against: :content, using: :tsearch

def to_s
  "#{content}, #{author}"
end

end
