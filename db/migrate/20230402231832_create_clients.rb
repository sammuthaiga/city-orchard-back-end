class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :phonenumber
      t.string :location

      t.timestamps
    end
  end
end
