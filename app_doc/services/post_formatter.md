## Overview
The `PostFormatter` class is a Ruby class that is designed to format post objects. It has two methods: `preview` which returns the first 100 characters of the post body followed by an ellipsis, and `uppercase_title` which returns the post title in all uppercase letters.

## initialize method
The `initialize` method is the constructor for the `PostFormatter` class. It takes a `post` object as an argument and assigns it to an instance variable `@post`.

```ruby
def initialize(post)
  @post = post
end
```

## preview method
The `preview` method extracts the first 100 characters from the `body` attribute of the `post` object and appends an ellipsis to it. It then returns the formatted preview.

```ruby
def preview
  @post.body[0..100] + "..."
end
```

## uppercase_title method
The `uppercase_title` method converts the `title` attribute of the `post` object to uppercase letters and returns the result.

```ruby
def uppercase_title
  @post.title.upcase
end
```