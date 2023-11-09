class Stash < ApplicationRecord
  ALLOWED_TYPES = [
    CBD = "cbd",
    THC = "thc"
  ].freeze

  ALLOWED_STRAINS = [
    KUSH = "kush",
    HAZE = "haze"
  ].freeze

  belongs_to :user
end

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
#
