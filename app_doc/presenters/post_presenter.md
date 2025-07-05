# PostPresenter Class

The `PostPresenter` class is responsible for presenting a post in a formatted way. It takes a post object as input and uses a `PostFormatter` service to format the post title and content.

## initialize method

```ruby
def initialize(post)
  @post = post
  @formatter = PostFormatter.new(post)
end
```

- The `initialize` method is the constructor for the `PostPresenter` class.
- It takes a `post` object as a parameter and assigns it to an instance variable `@post`.
- It creates a new instance of `PostFormatter` class passing the `post` object as a parameter and assigns it to an instance variable `@formatter`.

## render method

```ruby
def render
  <<~TEXT
  === #{@formatter.uppercase_title} ===
  Author: #{@post.author}
  
  #{@formatter.preview}
  TEXT
end
```

- The `render` method generates a formatted string representing the post.
- It uses string interpolation to include the uppercase title from the `@formatter` object, the author of the post, and the preview content from the `@formatter`.
- The formatted string is returned as the output of the `render` method.