class CreateGenPackages < ActiveRecord::Migration
  def change
    create_table :gen_packages do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
