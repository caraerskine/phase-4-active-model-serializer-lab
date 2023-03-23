class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags
  # has_many :tags

  def short_content
    object.content[0..39]...
  end
end

#created this serialzier 
#created short_content method
#dropped into byebug 
#above to see object, object.content, object.content.length etc to get this method body