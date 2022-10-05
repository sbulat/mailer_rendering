# README

Ruby version: 3.1.2
Rails version: 7.0.4

This app exercise rendering multipart emails when using markdown and converting it to HTML and text.
It copies old gem [markerb](https://rubygems.org/gems/markerb/versions/1.1.0) and adjust it for Rails 6+.
There is another branch `with_maildown` that uses still-maintained gem that experiences the same behavior.

To see the issue run `rake test` and check `test/mailers/grocery_list_mailer_test.rb`.
