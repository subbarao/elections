class RenameSeatsCategory < ActiveRecord::Migration
  def change
    rename_column :seats, :category, :mla_or_mp
  end
end
