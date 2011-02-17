class CreateOrganizers < ActiveRecord::Migration
  def self.up
    create_table :organizers do |t|
      t.string :address
      t.integer :cep
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :organizers
  end
end
