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

class Goal < ActiveRecord::Base
  validates :title, :private, :finished, :user, presence:true
  belongs_to :user
end
