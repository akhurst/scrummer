class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :email
      t.date :created
      t.date :accepted
      t.string :code

      t.timestamps
    end
  end
end
