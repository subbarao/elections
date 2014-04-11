class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.references :candidate, index: true
      t.references :seat, index: true
      t.references :party, index: true
      t.integer :year

      t.timestamps
    end
  end
end
