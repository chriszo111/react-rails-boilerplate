# == Schema Information
#
# Table name: stashes
#
#  id          :bigint           not null, primary key
#  strain      :string
#  strain_type :string
#  weight      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_stashes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class StashTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end