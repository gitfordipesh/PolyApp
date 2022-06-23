class Broadcast < ApplicationRecord
    has_many :comments, as: :commentable
end
