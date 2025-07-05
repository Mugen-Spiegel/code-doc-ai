# Class: Post
This Ruby class represents a Post object with attributes like title, body, and author. The purpose of this class is to create instances of posts with the specified attributes.

## initialize method
The `initialize` method is a constructor method that gets called when a new Post object is created. It takes in three arguments - `title`, `body`, and `author` - and initializes the instance variables `@title`, `@body`, and `@author` with the values provided.

```ruby
def initialize(title:, body:, author:)
  @title = title
  @body = body
  @author = author
end
```

In this method, the `title`, `body`, and `author` arguments are required keyword arguments, ensuring that the necessary attributes are provided when creating a new Post object.

## attr_reader
The `attr_reader` method is a shorthand way of defining getter methods for instance variables. In this case, it creates reader methods for `title`, `body`, and `author`, allowing external code to access these attributes of a Post object.

```ruby
attr_reader :title, :body, :author
```

By using `attr_reader`, we can retrieve the values of `title`, `body`, and `author` without directly accessing the instance variables, promoting encapsulation and providing a clean interface for interacting with Post objects.