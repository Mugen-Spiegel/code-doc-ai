## Overview
The `PostFormatter` class is designed to format post objects, specifically for displaying previews and uppercase titles.

## initialize method
The `initialize` method is the constructor for the `PostFormatter` class. It takes a `post` object as a parameter and sets it as an instance variable `@post`.

```ruby
def initialize(post)
  @post = post
end
```

## preview method
The `preview` method returns the first 100 characters of the post body followed by an ellipsis. It is used to generate a preview of the post content.

```ruby
def preview
  @post.body[0..100] + "..."
end
```

## uppercase_title method
The `uppercase_title` method returns the post title in uppercase. It is used to display the post title in uppercase letters.

```ruby
def uppercase_title
  @post.title.upcase
end
``` 

This class can be used to format post objects for display in a user interface. The `preview` method can be used to show a snippet of the post content, while the `uppercase_title` method can be used to emphasize the title.