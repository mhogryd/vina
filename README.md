# VINA Sample

## Config

* Ruby 2.3.0
* Rails 4.2.6
* Postgres Database (because it's easier with Heroku)

The app is hosted on Heroku at: [http://vina-sample.herokuapp.com](http://vina-sample.herokuapp.com)

## Usage

You can use this sample project to create and list potential users for the VINA app. Creating potential users doesn't require authentication, but listing users requires basic auth.

The fields for each potential user are:

| Field                 | Type |
| --------------------- |------|
| email                 | text |
| first_name            | text |
| gender                | text |

Available endpoints are:

| Action                | HTTP Method      | URI              | Auth Required |
| --------------------- |------------------| -----------------| ------------- |
| create                | POST             | /potential_users | No            |
| index (aka list)      | GET              | /potential_users | Yes           |

The basic auth username:password is:

```shell
api:supersecret
```

## Examples

#### Create Potential User

Pass email, first_name, and gender as a POST request:

```shell
curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"potential_user":{"email":"mhogryd@gmail.com","first_name":"mike","gender":"male"}}' http://vina-sample.herokuapp.com/potential_users
```

#### List Potential Users

Listing users requires basic auth so emails are kept (somewhat) secure:

```shell
curl -u "api:supersecret" http://vina-sample.herokuapp.com/potential_users
```

## Notes

* There's no check for existing emails. It seems ok to let people submit the form multiple times if they really want to. Duplicate emails can always be handled later if necessary.
* There are no secondary checks for format/presence of fields. Normally I would include these in case there's a bug in the client.
* You can also show/update/destroy records, each requiring basic auth, but this wasn't part of the spec so I'll just mention it here.