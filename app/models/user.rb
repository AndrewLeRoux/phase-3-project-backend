class User < ActiveRecord::Base
    has_many :favorites
    has_many :activities, through: :favorites

end