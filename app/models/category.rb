class Category < ApplicationRecord
    validates :category, presence: true, length: {maximum: 20}
    validates :details, presence: true, length: {minimum: 10, maximum: 100}
end
