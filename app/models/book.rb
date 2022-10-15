class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :status, presence:true
    validates :rating, numericality: {less_than_or_equal_to: 5, more_than_or_equal_to: 1}, allow_nil: true
end
