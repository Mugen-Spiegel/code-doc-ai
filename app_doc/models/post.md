# Post Class

The Post class represents a post object with attributes such as title, body, and author.

## initialize method
The `initialize` method is a constructor for the Post class. It takes three keyword arguments `title`, `body`, and `author` and initializes instance variables `@title`, `@body`, and `@author`.

```ruby
def initialize(title:, body:, author:)
    @title = title
    @body = body
    @author = author
end
```

- `title:`: Represents the title of the post.
- `body:`: Represents the body content of the post.
- `author:`: Represents the author of the post.

## attr_reader
The `attr_reader` method is a Ruby shortcut for defining getter methods for instance variables. In this case, it creates getter methods for `title`, `body`, and `author`.

```ruby
attr_reader :title, :body, :author
```

- `title`: Allows access to the `@title` instance variable.
- `body`: Allows access to the `@body` instance variable.
- `author`: Allows access to the `@author` instance variable.

Overall, the Post class encapsulates data related to a post, providing a convenient way to access and manipulate the post attributes.