# app/presenters/post_presenter.rb
require_relative '../services/post_formatter'

class PostPresenter
  def initialize(post)
    @post = post
    @formatter = PostFormatter.new(post)
  end

  def render
    <<~TEXT
    === #{@formatter.uppercase_title} ===
    Author: #{@post.author}
    
    #{@formatter.preview}
    TEXT
  end
end
