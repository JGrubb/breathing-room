class Student < ActiveRecord::Base
  attr_accessible :acceptance_of_terms, :address, :altphone, :birthdate, :current_health, :email, :emergency_contact_name, :emergency_contact_phone, :how_found, :name, :phone, :prior_experience
end
