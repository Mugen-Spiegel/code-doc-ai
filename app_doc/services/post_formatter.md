# PostFormatter Class

The `PostFormatter` class is designed to format post objects by providing methods to generate a preview of the post body and convert the post title to uppercase.

## initialize method
The `initialize` method is a constructor method that initializes a new instance of the `PostFormatter` class with a post object.

```ruby
def initialize(post)
  @post = post
end
```

## preview method
The `preview` method extracts the first 100 characters of the post body and appends ellipsis to create a preview of the post.

```ruby
def preview
  @post.body[0..100] + "..."
end
```

## uppercase_title method
The `uppercase_title` method converts the title of the post to uppercase.

```ruby
def uppercase_title
  @post.title.upcase
end
```