class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.references :favorite_movie, foreign_key: { to_table: :movies }

      t.timestamps
    end
  end
end
