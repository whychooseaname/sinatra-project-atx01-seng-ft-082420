class Cook <ActiveRecord::Base 
    has_many :dishes
    has_many :expos, through: :dishes
end