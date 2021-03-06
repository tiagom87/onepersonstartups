# == Schema Information
#
# Table name: startups
#
#  id            :integer          not null, primary key
#  name          :string
#  hollywood     :string
#  logo_url      :string
#  creator_name  :string
#  creator_email :string
#  source_name   :string
#  source_url    :string
#  revenue       :integer
#  startup_url   :string
#  state         :string           default("pending")
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :integer
#  guid          :string
#

class Startup < ApplicationRecord
	before_create :populate_guid
	
	belongs_to :category

	validates :name, presence: true
	validates :creator_name, presence: true
	validates :hollywood, presence: true
	validates :startup_url, presence: true
	validates :revenue, presence: true

  private
  def populate_guid
    self.guid = SecureRandom.uuid()
  end

end
