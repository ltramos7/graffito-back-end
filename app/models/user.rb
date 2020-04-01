class User < ApplicationRecord
    has_many :favorites
    has_many :murals, through: :favorites
end
