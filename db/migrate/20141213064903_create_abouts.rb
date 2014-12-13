class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.attachment :image
      t.text :description
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
