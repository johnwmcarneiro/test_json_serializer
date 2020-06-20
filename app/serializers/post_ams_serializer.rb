class PostAmsSerializer < ActiveModel::Serializer
	attributes :title, :content
	belongs_to :category, serializer: CategoryAmsSerializer
	has_many :comments, serializer: CommentAmsSerializer
end