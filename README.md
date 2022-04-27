# README - dlundb's Ruby on Rails repository

---

## Installations Required
 - ruby 2.7+
 - sqlite3 3.31+
 - node.js v10.19+
 - yarn 1.22+
 - rails 7.0.2.3+

---

## Running the Blog

```
git clone https://github.com/dlundb/RoR.git
cd RoR
bin/rails server
```

Server is launched on localhost:3000 or http://127.0.0.1:3000, open in web browser to view.

---

## Overview

The goal of this project is to acquaint the author with Ruby on Rails and re-familiarize with the Model, View, Controller (MVC) Architecture. 

> Model - lowest level, maintains data
>
> View - level responsible for displaying data to user
>
> Controller - software code controlling the interactions between Model and View
> 
>> https://www.educative.io/blog/mvc-tutorial

After launching, a user can create a new article, read an existing article, update (edit) an existing article, or delete one. The user can also post and delete comments on an article.

From launching on localhost, the web app should display the database of articles in a list with associated tags. Beyond what the "Getting started with Rails" guide taught, some additional functionality (previous/next links on articles, link to homepage, tags added) was added in order to further tinker with the project. A few different views were created in order to display in a more aesthetically pleasing manner. 

---

### Changes

1. Created _home.html.erb to quickly render a hyperlink to the homepage wherever needed
2. Edited articles_controller.rb, show.html.erb to find the previous/next article (if existing), and display a hyperlink to them when viewing an article
3. Created _list.html.erb, a render to display the articles in a list, used it to simplify index.html.erb
4. Edited Gemfile, article.rb (model) to accept tags, using `acts-taggable-on`
    - edited _form.html.erb to add tag entry field with example placeholders
5. Created _tag.html.erb in order to have a render that displays tags in smaller text, italics (both in _list.html.erb as well as on the articles themselves)
6. Created tagged.html.erb to have a page listing any articles that contain a selected tag (reached by clicking any tag in the article index, or while reading an article)