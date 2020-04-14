class User < ApplicationRecord
    has_many :favorites
    has_many :murals, through: :favorites
    has_secure_password
    validates :user_name, uniqueness: { case_sensitive: false }

    # accepts_nested_attributes_for :favorite_murals


    # I need to research about uniqueness...what is current is for testing
end
