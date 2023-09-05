class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :imageUrl
      t.string :headline
      t.integer :ardaId

      t.timestamps
    end
  end
end
