# Journal App

[View the app on heroku](https://day-one-journal.herokuapp.com/)
<br>
<br>

## Overview
This app gives users a way to easily list down and track their goals and activities. Users can create categories and break them down into tasks. Using the Today feature, users can view their tasks that has a deadline of today.

## Features
* Users can register their accounts to access the app's features
* Users can create categories for their general goals, and add specific tasks within those categories
* Users can edit and delete these categories and tasks for better management
* Once finished, users can mark the tasks as complete
* Through the today tab, users can view their tasks that are due today

## Version
```
Ruby 3.1.2
Rails 7.0.3.1
```

## Setup
```
$ bundle install
$ rails db:setup
```

## Starting the app
```
$ rails s
```

## Running the test suite
```
$ rails test
```

## Screens
### Homepage
![home](https://user-images.githubusercontent.com/100396329/196854994-6fcc5ebc-5d39-420e-90bd-2b65e05eb5da.jpg)

### All Categories
![categories-index](https://user-images.githubusercontent.com/100396329/196855063-01f26d14-7594-4594-9ec6-1718dbd5ec92.jpg)

### Show Category
![cateogry-show](https://user-images.githubusercontent.com/100396329/196855101-9b8ae856-e29d-4eca-87b1-1909943a2267.jpg)

### All Tasks
![tasks-index](https://user-images.githubusercontent.com/100396329/196855138-4931e8c8-24b1-4966-9a67-c2915b79501d.jpg)

### Tasks Today
![tasks-today](https://user-images.githubusercontent.com/100396329/196855164-9ba14711-f750-4aa3-b2fa-9792255dfc71.jpg)
