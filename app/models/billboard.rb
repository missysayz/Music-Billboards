class Billboard < ApplicationRecord
    has_many :songs, optional:true
end
