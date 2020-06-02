class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.belongs_to :option, null: false, foreign_key: true
      t.boolean :like

      t.timestamps
    end
  end
end
