# PostPresenter Class

The `PostPresenter` class is responsible for presenting a post in a specific format. It takes a `post` object as input and formats it using a `PostFormatter` service.

## initialize method

```ruby
def initialize(post)
  @post = post
  @formatter = PostFormatter.new(post)
end
```

- The `initialize` method is a constructor for the `PostPresenter` class.
- It takes a `post` object as a parameter and sets it as an instance variable `@post`.
- It initializes a `PostFormatter` object with the `post` parameter and assigns it to an instance variable `@formatter`.

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

- The `render` method generates a formatted output of the post.
- It uses string interpolation to include the uppercase title of the post, the author, and a preview of the post content.
- The `@formatter.uppercase_title` method is called to get the post title in uppercase.
- The `@post.author` is used to get the author of the post.
- The `@formatter.preview` method is called to get a preview of the post content.