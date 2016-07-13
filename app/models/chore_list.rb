class ChoreList < ActiveRecord::Base
    belongs_to :kid 
    has_many :chore_items
    validates :kid_id, presence: true
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
end
