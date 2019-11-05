class Player < ApplicationRecord
    
    has_many :roles, through: :playerroles
    has_many :playerroles
    
    belongs_to :team
    
    validates_size_of :nome, :nickname, {minimum: 3, maximum: 20}
    
    validates :idade, numericality: { only_integer: true }
    
end
