class AddCodeToGenPackages < ActiveRecord::Migration
  def change
    add_column :gen_packages, :code, :string
  end
end
