# PostPresenter Class

The PostPresenter class is responsible for presenting a post in a specific format. It takes a post object as input and uses a PostFormatter service to format the post data.

## initialize method

In the initialize method, the PostPresenter class takes a post object as an argument and assigns it to an instance variable `@post`. It also initializes a PostFormatter object with the post object and assigns it to the instance variable `@formatter`.

```ruby
def initialize(post)
  @post = post
  @formatter = PostFormatter.new(post)
end
```

## render method

The render method generates and returns a formatted string representing the post. It includes the uppercase title of the post, the author, and a preview of the post content.

```ruby
def render
  <<~TEXT
  === #{@formatter.uppercase_title} ===
  Author: #{@post.author}
  
  #{@formatter.preview}
  TEXT
end
```

Overall, the PostPresenter class encapsulates the logic for presenting a post in a specific format, utilizing a PostFormatter service to format the post data.