class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :favorite_murals
  # has_many :murals

  def favorite_murals
    object.favorites.map {|favorite| favorite.mural}
  end

end
