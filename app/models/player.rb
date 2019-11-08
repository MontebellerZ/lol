class Player < ApplicationRecord
    
    has_many :roles, through: :playerroles
    has_many :playerroles, dependent: :destroy
    
    belongs_to :team
    
    validates_size_of :nome, :nickname, {minimum: 3, maximum: 20}
    
end