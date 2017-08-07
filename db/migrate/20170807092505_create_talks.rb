class CreateTalks < ActiveRecord::Migration[5.1]
  def change
    create_table :talks do |t|
      t.integer :first_speaker
      t.integer :second_speaker

      t.timestamps
    end
  end
end
