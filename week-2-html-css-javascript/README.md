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
    
We generally start off with 3 directories 

	- stylesheets
	- javascripts
	- images
	
Stylesheets folder will hold all of our css files, javascripts hold all of our js files and images hold all the image elements that are used to build up the page.

## Twitter Bootstrap

Twitter bootstrap is a front end framework that allows us to create mock up pages very quickly. The components are already designed and made for us, all we have to do is pick and choose the elements we want to use and simply pop it onto our page. 

Check out [Twitter Bootstrap Documentation / Download](http://getbootstrap.com)

### Integrating Bootstrap

In your index.html in the head tag include the following

	  <link rel="stylesheet" href="stylesheets/bootstrap.css">
	  <script src="javascripts/jquery.js"></script>
	  <script src="javascripts/bootstrap.js"></script>
	  
jQuery is a library that allowes easy access to dom elements. We will talk more about jQuery later on. For now we need to include jquery before bootstrap because bootstrap.js depends on jQuery.

Those 3 files make up the basic foundation of our page. You can now utilize twitter bootstrap and all of its components. 

#### Customized CSS

If you wish to customize twitter bootstrap its usually a best practice to include a separate file for the css and the javascript.

You can do so by creating a new file in your `stylesheets` directory call it `styles.css` and then simply include it in your `index.html` file like this.

	<link rel="stylesheet" href="stylesheets/styles.css">
	
You can now add all your customizations to the `styles.css` file and it will effect your `index.html` file.

#### Customized Javascript

To customize your javascript you can do the samething. Simply create a file called `application.js` in your `javascripts` folder and then include it in your index.html file like so.

	<script src="javascripts/application.js"></script>
	
Now you can add any custom javascripts for your page into this file.



