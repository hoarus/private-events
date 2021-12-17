# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



Table Structure:

USERS
  username
  password

EVENTS
  date
  name
  location
  creatorID

INVITATIONS
  event_id
  attendee_id

Model Associations:

USER
  has_many :created_events, foreign_key: :creator_id, class_name: "event"
  has_many :invitations, foreign_key: :attendee_id
  has_many :attending_events, through: :invitations

EVENT
  belongs_to :creator, class_name: "User"
  has_many :invitations
  has_many :guests, through :invitations, source: :attendee

INVITATION
  belongs_to :attendee, class_name: "User"
  belongs_to :event