class RenameSeatsMlaOrMp < ActiveRecord::Migration
  def change
    rename_column :seats, :mla_or_mp, :type
  end
end
