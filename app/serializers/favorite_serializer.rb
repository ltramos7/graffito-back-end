class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :mural
 
  belongs_to :mural
  belongs_to :user
end
