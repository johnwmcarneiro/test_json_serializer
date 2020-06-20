class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :note
  belongs_to :user
end
