class Shelter < ApplicationRecord
    has_many :animals
    validates :kind, presence: true
    validates :kind, uniqueness: true
end
