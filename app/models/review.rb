class Review < ApplicationRecord

    belongs_to :user

    validates :user_id, presence: true
    validates :content, length: { maximum: 300 }
    validates :rating,  presence: true, numericality: { only_integer: true , less_than_or_equal_to: 5, greater_than_or_equal_to: 0}
    validates_uniqueness_of :user_id

end
