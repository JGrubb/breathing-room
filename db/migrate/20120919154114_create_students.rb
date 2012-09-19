class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthdate
      t.text :address
      t.string :phone
      t.string :altphone
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :email
      t.text :how_found
      t.text :prior_experience
      t.string :current_health
      t.boolean :acceptance_of_terms

      t.timestamps
    end
  end
end
