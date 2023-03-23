class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_one :profile, serializer: AuthorProfileSerializer
  #authors profile etc created this custom Serizlier and said to explicitly use it here 
  
  has_many :posts, serializer: AuthorPostSerializer


end
