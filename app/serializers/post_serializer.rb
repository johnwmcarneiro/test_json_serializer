class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
  belongs_to :category
  has_many :comments
end
