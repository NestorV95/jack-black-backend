class CreateUserHands < ActiveRecord::Migration[6.1]
  def change
    create_table :user_hands do |t|
      t.integer :bet
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
