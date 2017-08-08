class AddUserReferenceToTalks < ActiveRecord::Migration[5.1]
  def change
    add_reference :talks, :user, foreign_key: true
  end
end
