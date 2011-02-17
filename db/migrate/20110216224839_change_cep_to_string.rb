class ChangeCepToString < ActiveRecord::Migration
  def self.up
    remove_column :organizers, :cep
    add_column :organizers, :cep, :string
  end

  def self.down
    remove_column :organizers, :cep
    add_column :organizers, :cep, :integer
  end
end
