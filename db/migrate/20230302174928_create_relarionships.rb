class CreateRelarionships < ActiveRecord::Migration[6.0]
  def change
    create_table :relarionships do |t|
      t.references :following, null: false, foregin_key: { to_table: :users }
      t.references :follower, null: false, foregin_key: { to_table: :users }
      t.timestamps
    end
  end
end
