# RailsCasts Episode #403: Dynamic Forms (pro)

http://railscasts.com/episodes/403-dynamic-forms

Requires Ruby 1.9.2 or higher.


### Commands used in this episode

```
rails g scaffold ProductType name --skip-stylesheets
rails g model ProductField name field_type required:boolean product_type:belongs_to
rails g migration add_type_to_products product_type_id:integer properties:text
rake db:migrate
```
