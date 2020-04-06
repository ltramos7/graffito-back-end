class MuralSerializer < ActiveModel::Serializer
  attributes :id, :mural_title, :year_installed, :description, :artists
  has_many :favorites
end
