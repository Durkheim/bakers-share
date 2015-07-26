class Reply < ActiveRecord::Base
  belongs_to :replier, class_name: "User"
  belongs_to :comment
end
