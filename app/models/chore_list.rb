class ChoreList < ActiveRecord::Base
    validates :kid_id, presence: true
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
end
