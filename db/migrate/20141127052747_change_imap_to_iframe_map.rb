class ChangeImapToIframeMap < ActiveRecord::Migration
  def change
  	remove_column :gen_attractions, :imap_id
  	add_column :gen_attractions, :iframe_id, :string
  end
end
