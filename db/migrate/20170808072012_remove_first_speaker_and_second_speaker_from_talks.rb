class RemoveFirstSpeakerAndSecondSpeakerFromTalks < ActiveRecord::Migration[5.1]
  def change
    remove_column :talks, :first_speaker, :integer
    remove_column :talks, :second_speaker, :integer
  end
end
