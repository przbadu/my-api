# README

This is Rails 6 API only app. This app is build to re-use this app for multiple
projects which will require simple authentication, and other RESTful APIs based
on authenticated user.

### Users

Users authentication will be handled with `User` model, with `bcrypt`, and JWT for
stateless authorization. This is a simple authentication, where user register with
their email and username, and later login with that user.

### App API structure

- In this app, I will be building multiple API only apps
- All of the apps will be namespaced in their own module
- Route, Model, serializer, controller, etc will be namespaced with main app name, for example: IssuesTracker.

### API documentation:

I am using postman to test these APIS and we can find POSTman documentation here:

https://web.postman.co/collections/11512216-dc8f8dac-42bc-431a-97e2-d830627320ee?version=latest&workspace=30a856e9-f4f0-403d-869c-ae16bfc32572#introduction