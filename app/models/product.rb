class Product < ApplicationRecord
require 'csv' 
    def self.import(file)
        
        Products.new.SmarterCSV.process(file.path)
        
    end

end
