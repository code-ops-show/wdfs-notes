# Week 3: Anatomy of Web Requests

In week 3 we start learning about web requests. How does the browser communicate with the server and what kind of response do you get back from the server.

We take a look at some of the basics that make up what we know as the world wide web today.

We will start building our own web framework using sinatra library for ruby programming language.

Here is an example of a basic Sinatra Application

```ruby
class Application < Sinatra::Application
  get '/' do 
    "Hello World!"
  end
end
```
