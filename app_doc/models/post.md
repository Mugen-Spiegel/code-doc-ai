# Overview
The `Post` class represents a post object with attributes such as title, body, and author. Its purpose is to create instances of posts with these attributes.

## initialize method
The `initialize` method is a special method in Ruby that is called when a new object of the class is created. It takes in three parameters: `title`, `body`, and `author`, and assigns them to instance variables.

```ruby
def initialize(title:, body:, author:)
  @title = title
  @body = body
  @author = author
end
```

- `title:`: The title of the post.
- `body:`: The body content of the post.
- `author:`: The author of the post.

## attr_reader
The `attr_reader` method is a shortcut in Ruby for defining getter methods for instance variables. It creates a method for each symbol passed to it that returns the value of the corresponding instance variable.

```ruby
attr_reader :title, :body, :author
```

- `:title`: Creates a method `title` that returns the value of the `@title` instance variable.
- `:body`: Creates a method `body` that returns the value of the `@body` instance variable.
- `:author`: Creates a method `author` that returns the value of the `@author` instance variable.