class AddGuidToStartups < ActiveRecord::Migration[5.0]
  def change
    add_column :startups, :guid, :string
  end
end
