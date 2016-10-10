# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  title      :string
#  details    :string
#  finished   :boolean
#  private    :boolean
#  cheers     :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Goal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:user)}
  it {should validate_presence_of(:private)}
  it {should validate_presence_of(:finished)}
  it {should belong_to(:user)}

end
