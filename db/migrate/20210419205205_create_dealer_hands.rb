class CreateDealerHands < ActiveRecord::Migration[6.1]
  def change
    create_table :dealer_hands do |t|
      t.references :dealer, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
