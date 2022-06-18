class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :kind

  has_many :animals
end
