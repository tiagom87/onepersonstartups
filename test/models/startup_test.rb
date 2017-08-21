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
#

require 'test_helper'

class StartupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
