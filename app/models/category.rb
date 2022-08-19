class Category < ApplicationRecord
    validates :title, presence: true, 
                    uniqueness: true,
                    length: {maximum: 20}
    validates :details, presence: true,
                    length: {minimum: 10, maximum: 100}
end
