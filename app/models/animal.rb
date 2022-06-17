class Animal < ApplicationRecord
    belongs_to :shelter
    validates_inclusion_of :availability, :in => ['yes', 'no']
end
