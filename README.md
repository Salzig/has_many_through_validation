#Purpose
A friend told me that he has some problems validating attributes using a conditional based on referenced resource. This is an small "copy" of his setup for testing purpose.

#Setup
    git clone <this repo>
    rake db:setup

#Testing 

    User.first.valid?
    # true

    User.new(:roles => [Role.first]).valid?
    # false

    User.new(:roles => [Role.first], :name => "test").valid?
    # true

#Related Links
* http://www.agilereasoning.com/2008/04/26/using-belongs_to-in-rails-model-validations-when-the-parent-is-unsaved/