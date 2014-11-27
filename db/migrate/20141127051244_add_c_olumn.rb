class AddCOlumn < ActiveRecord::Migration
  def change
  	add_column :answers, :label, :string
  end
end
