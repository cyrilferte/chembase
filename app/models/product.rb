class Product < ApplicationRecord
def self.search(search)
  where("CAS ILIKE ?", "%#{search}%") 
  where("chem ILIKE ?", "%#{search}%")
end

end
