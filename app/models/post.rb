# app/models/post.rb
class Post
  attr_reader :title, :body, :author

  def initialize(title:, body:, author:)
    @title = title
    @body = body
    @author = author
  end
end
