class Comment < ActiveRecord::Base
  belongs_to :commenter, class_name: "User"
  belongs_to :recipe
  has_many :replies
  has_many :repliers, through: :replies, source: :replier
end
