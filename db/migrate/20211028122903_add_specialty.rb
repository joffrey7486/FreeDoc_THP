class AddSpecialty < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :specialty
    end
    add_reference :appointments, :specialty, foreign_key: true
  end
end
