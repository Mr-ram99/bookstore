class CreateBookorders < ActiveRecord::Migration[6.1]
  def change
    create_table :bookorders do |t|
      t.references :book, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
