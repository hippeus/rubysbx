# React Learning Curve

Sandbox for Ruby on Rails learning curve.

Most code is a lose variation or exact copy of Udemy course made by Rob Percival and Mashrur Hossain:

1. [The Complete Ruby on Rails Developer Course](https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/)

## prerequisites

`node.js` - JavaScript runtime

`nvm` - node version manager

`yarn` - JavaScript package manager

`rvm` - Ruby version manager [rvm.io](http://rvm.io/)

`Ruby` - Ruby (v2.7+) (e.g. `rvm install ruby-2.7.0 && rvm --default use 2.7.0`)

`gem` - ruby package manager (build-in in language)

`gem install bundler` - add-on to Ruby that provide consistent environments across projects

`gem install webpacker` - uses webpack to manage app-like JavaScript modules in Rails

`Rails v6` - add-on to Ruby for creating web apps (`gem install rails -v 6.0.3.3`)

## content

`alpha_blog` - articles blog _(pagination, authentication, static files, flash messages, param whitelisting)_

### Ruby centric

### Rails centric

## tools

`rails` -- rails cli

`rails c / rails console` rails dev console to interact with DB

`byebug` - debugger (byebug)

## miscellaneous

### bootstrap dependency

```bash
yarn add bootstrap@4.5 jquery popper.js
```

### app template

```bash
rails new <app_name>
```

### run app locally

```bash
rails s
```

### generate controller

```bash
rails generate controller <name>
```

### generate migration files

```bash
# command will generate timestamped filename: <timestamp>_<name>.rb
rails generate migration <name>

# edit file with proper attributes then when readytable output
# NOTE: after file is migrated is locked, and direct changes to it won't generate new table output
rails db:migrate

# Following command reverts lock on migration file, removing table content.
# This is now a preferred way as is brittle. Better to create new file each change.
rails db:rollback
```
