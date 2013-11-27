# Week 1: Git and OOP

In the first week we took a look at the ruby programming language and object oriented programming. We also took a look at git and how it ties into our workflow.

## Git

Some basic git commands we used in class

```
git clone git://some@address.com:/git-repo.git
```
Git clone will allow us to clone git repositories down into our computer. This is what we used to clone the repository that was created in github for the course.

Once we make changes to our code we can push it back up using

```
git push origin master
```
The 'origin' signifies the place our git repository is hosted. In this case 'origin' represents github.

The 'master' is the name of the branch we're pushing to. Since initially we worked on the master branch we pushed the code back into the master branch.

```
git branch develop
```
We then proceeded on to creating a new branch.

Branches are sort of like snapshots of the files at a certain point in development. Usually we use the master branch for production release and do the development work in the develop branch.

```
git branch
```
Allows us to check which branch we are working on. The active branch will be highlighted in green with an asterisk

Make sure you are working in the develop branch!

## Ruby Programming Language

We talked about some basic Ruby objects. We talked about the concept that everything in ruby is an object.

The best way to learn is to play, so to get into the ruby console simply type ```irb```

### Basic Data Types

```
1 + 1
```
We are adding 2 ```Integer``` together. ```Integer``` are also known as ```Fixnum```

```
puts "Hello World"
```
We are outputting a ```String``` to the console 

```
2.2 + 3.2
```
This will add 2 ```Float``` together

### Arrays

```
numbers = [1, 2, 3, 4]
```
This will create an array of numbers

You can also create array using:
```
numbers = Array.new()
```
This will create an empty array for you

To add items to an array you can use ```push```
```
numbers.push(1)
```
This will push the number 1 into the ```numbers``` ```Array```

To loop out items in an array we can use ```.each``` 
```
numbers.each do |n|
  puts n
end
```
In this loop n will represent each number in the array so for example if we had an array ```[6, 7, 8]``` the loop will run 3 times and each time |n| will change. In side of our code block we call ```puts n``` this line will basically output the value of ```n``` to the console.

To learn more about arrays and what they can do simply head over to this link [Ruby Array](http://ruby-doc.org/core-2.0.0/Array.html)