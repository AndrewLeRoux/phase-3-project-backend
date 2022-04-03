# Activity Planner

![images](images/login-page.jpg)

## About the Application

*This application is a website where users can find new activities to do or favorite activities that they want to participate in.*

This repository only contains the backend of this application. The frontend repository can be accessed [here](https://github.com/AndrewLeRoux/phase-3-project-frontend)


## Functionality

### User Interaction

A user is able to create an account or login into an existing profile. Once logged in they will be able to access their profile page, an activities list page, and a favorited activites page. What is rendered on the page is specific to each user. Each user selects activity preferences when creating their account which will affect which activities that are recommended to them, and any activities they favorite will be saved to the database and be specific to their account. All information will persist in the database and will be saved when the user logs out. 

### About the Database

The backend of this application is a database with a many-to-many relationship between activities and users. These two tables are joined with the favorites table. Each user can favorite many activities and each activity can be favorited by many users. 

The activities for this project have been pulled from the Bored API, an API that contains activities along with some information about them. The user and favorite tables are populated from the frontend of the application. When a user profile is created a new user will be added to the database, and anytime a user favorites or unfavorites an activity the favorites table will be updated.



## Resources

### Activity Data

The Bored API: [https://www.boredapi.com/](https://www.boredapi.com/)

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

