class CommentAmsSerializer < ActiveModel::Serializer
	attributes :note
	belongs_to :user, serializer: UserAmsSerializer
end