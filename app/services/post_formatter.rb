# app/services/post_formatter.rb
require_relative '../models/post'

class PostFormatter
  def initialize(post)
    @post = post
  end

  def preview
    @post.body[0..100] + "..."
  end

  def uppercase_title
    @post.title.upcase
  end
end
