class CreateReadHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :read_histories do |t|
      t.references :user, foreign_key: true
      t.references :diary, foreign_key: true

      t.timestamps
    end
  end
end
