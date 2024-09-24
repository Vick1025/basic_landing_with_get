# Basic App Frame With GetX
This just for people who use Flutter and want to quick start.
In this project, There are already build some basic UI and frameworks.
I using GetX as the core state management tool. And also use it
to manage multi-language、theme、page routing......
Support android and iOS.

## The Design and Architecture
Clean architecture is the main design concept of this project.
All function write in the folder named [features], and separate by category.
Some functions and widgets are shared among multiple programs and will be placed under the [core] folder.

## Note
You need to change the sdk path inside "android/local.properties" this file, to meet your environment.

## API Data
The API data is from [Open Library Search API](https://openlibrary.org/dev/docs/api/search)