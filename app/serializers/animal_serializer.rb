class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :shelter_id, :kind, :availability, :age, :name, :info

  belongs_to :shelter
end
