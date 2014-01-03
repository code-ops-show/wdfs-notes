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

## Basic Request

Between a client and a server usually the side that sends the request is considered the client.

In a typical web request the browser is the client since the request usually originates from the browser. The request usually contains information about what kind of data the browser is looking for and in which format is the browser expecting, usually done via the URL and the format is by default HTML. 

When you type a web address into the browser your making a request to the server. 