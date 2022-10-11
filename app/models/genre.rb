class Genre < ApplicationRecord
    has_many :companies
    validates :name, presence: true
end
