class Role < ApplicationRecord
    
    has_many :players, through: :playerroles
    has_many :playerroles

end
