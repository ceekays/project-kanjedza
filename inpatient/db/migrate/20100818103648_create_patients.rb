class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :ward
      t.string :admission_number

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
