class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author
  has_many :tags

end

#authors have a post
#posts have many tags (keyword tags)
#