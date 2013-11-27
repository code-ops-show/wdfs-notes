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