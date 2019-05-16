class Artist < ApplicationRecord
  belongs_to :billboard, optional:true
end
