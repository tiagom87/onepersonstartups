class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :hollywood
      t.string :logo_url
      t.string :creator_name
      t.string :creator_email
      t.string :source_name
      t.string :source_url
      t.integer :revenue
      t.string :startup_url
      t.string :state, default: "pending"

      t.timestamps
    end
  end
end
