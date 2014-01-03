# Week 2: HTML, CSS and Javascripts

In the second week we take a look at working with html, css and javascript. We will start with empty html pages and incorporate all the bits into into our static index.html file.

A basic html page will have a structure like this

    <!doctype html>
    <html>
        <head>
            <title>Page title goes here</title>
        </head>
        <body>
            <p>content goes here</p>
        </body>
    </html>

## Twitter Bootstrap

Twitter bootstrap is a front end framework that allows us to create mock up pages very quickly. The components are already designed and made for us, all we have to do is pick and choose the elements we want to use and simply pop it onto our page. 

Check out [Twitter Bootstrap Documentation / Download](http://getbootstrap.com)

### Integrating Bootstrap

In your index.html in the head tag include the following

	  <link rel="stylesheet" href="stylesheets/bootstrap.css">
	  <script src="javascripts/jquery.js"></script>
	  <script src="javascripts/bootstrap.js"></script>
	  
jQuery is a library that allowes easy access to dom elements. We will talk more about jQuery later on. For now we need to include jquery before bootstrap because bootstrap.js depends on jQuery.

