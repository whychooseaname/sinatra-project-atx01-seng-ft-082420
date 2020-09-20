class Expo <ActiveRecord::Base
    has_many :dishes
    has_many :cooks, through: :dishes
end