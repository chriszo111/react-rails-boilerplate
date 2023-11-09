class CreateStashes < ActiveRecord::Migration[7.1]
  def change
    create_table :stashes do |t|
      t.string :strain_type
      t.string :strain
      t.references :user, null: false, foreign_key: true
      t.decimal :weight

      t.timestamps
    end
  end
end
