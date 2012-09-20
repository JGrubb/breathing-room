class Student < ActiveRecord::Base

  attr_accessible :acceptance_of_terms, :address, :altphone, :birthdate, :current_health, :email, :emergency_contact_name, :emergency_contact_phone, :how_found, :name, :phone, :prior_experience

  validates :acceptance_of_terms, :acceptance => true

  validates :name, :address, :phone, :emergency_contact_name, :emergency_contact_phone, :presence => true

end
