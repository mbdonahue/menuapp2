class Restaurant < ActiveRecord::Base
	belongs_to :user

	scope :neighborhood, -> (neighborhood) { where neighborhood: neighborhood }
  	scope :cuisine, -> (cuisine) { where cuisine: cuisine }
  	scope :city, -> (city) { where city: city }
end
