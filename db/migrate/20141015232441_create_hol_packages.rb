class CreateHolPackages < ActiveRecord::Migration
  def change
    create_table :hol_packages do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
