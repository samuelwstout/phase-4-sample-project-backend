class CreateMusicians < ActiveRecord::Migration[7.0]
  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :instrument
      t.string :location
      t.text :bio
      t.string :media_url1
      t.string :media_url2

      t.timestamps
    end
  end
end
