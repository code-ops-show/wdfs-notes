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

## HTML Basics

A basic html tag has 3 parts:

	<p>Content</p>
	
A beginning tag `<p>` a middle content `Content` and an end tag `</p>` There are many kinds of html tags suitable for different purposes. Here are some examples

	```html
	<h1>Heading 1</h1>
	<h2>Heading 2</h1>
	.
	.
	.
	<h6>heading 6</h6>
	
	<p>paragraph</p>
	<strong>emphasize this text</strong>
	
	<article>
	  <section></section>
	  <section></section>
	</article>
	
	<div>Stands for 'division'</div>
	
	<span>great for inline content</span>
	```
	
Some HTML tags close themselves for example checkout the following tags

	```html
	<img src='path/to/file' alt='image description' />
	<hr />
	<br />
	```
	
To find out more about html tags head on over to the Mozilla Developer Network [MDN Html](https://developer.mozilla.org/en-US/docs/Web/HTML)

## CSS Basics

CSS stands for cascading style sheets, it looks like this

	body { 
	  background: red;
	}
	
The `body` in this case is what we call the **selector** then we have `{}` which will encapsulate our css rule. the `background: red;` is the rule that will define how our **selector** in this case the `body` is going to look. In this case the body will have a red background.

The selector can be the html element or you can select specific html tags using ids. For example.

 
	```html
	<div id='hero'>
	  ... content for hero ...
	</div>
	```

To select this div in css we can do something like this

	```css
	div#hero { 
	  font-size: 16px;
	  background: #eee;
	}
	```
	
We can also select elements with in another element for example if we had a `<p>` inside of our `div#hero` 


	```html
	<div id='hero'>
	  <p>paragraph in the hero tag</p>
	</div>
	```
	
To select the paragraph tag within the `div#hero` in css all we have to do is 

	```css
	div#hero p { 
	  font-size: 18px;
	  color: black;
	}
	```
	
There is another way for us to select element and that is using classes. See the below example

	```html
	<div class='green'>
	  ... content goes here ...
	</div>
	
	<div class='green'>
	  ... more green content ...
	</div>
	```
	
The difference between ids and classes are that you can only have 1 of any id on the page. Example: 

	```html
	<div id='hero'>
	 
	</div>
	
	<div id='hero'>
	
	</div>
	```

Is considered invalid html. You can only have 1 element with `hero` on the page. However with classes you can have multiple elements on the page having the same class. 

Looking at our example if we wanted to make the text in the html element green all we would have to do is

	```css
	div.green { 
	  color: green;
	}
	```
	
This will set the style for all the elements on the page with the class `green`

To learn more about CSS checkout [MDN Css](https://developer.mozilla.org/en-US/docs/Web/CSS)

## jQuery Basics

Javascipt is a programming language that runs in the browser. You can open up a console in your browser and type javascript programs into them. However learning javascript from scratch and using javascript from scratch can be a very time consuming and tedious since different browsers have different implementations of Javascript. Learning to code with javascript is a craft on its own.

In this course we are going to start by working with [jQuery](http://jquery.com). jQuery makes it very easy for us to do animation and cool interactions on our page. Click the link to download jquery and include it in your page, if you haven't already. 

The jQuery documentation is very well written. You can read through it and very quickly build cool things with it. For example try the following example.

	```html
	<div id='hero'>
	  ... some content ...
	</div>
	```
	
and in your `application.js` file try typing this in.

	```javascript
	$(document).ready(function() {
	  $('div#hero').click(function() {
	    $(this).toggleSlide();
	  });
	});
	```
	
You may be wondering what is all this document ready business. Basically the `$(document).ready();` function is telling the browser to only run the function inside when the document has completely loaded. We need to do this because sometimes the document will have only partially loaded and the function will run but for example if `div#hero` doesn't exist when the page is loading the function won't work. 

`toggleSlide` is another jQuery function try searching for it in the jQuery documentation to see what it does. It will very easy allow you to build accordion based navigation.

Try out some other jquery functions like `fadeIn` `fadeOut` `toggleFade`.
	
	




