# Padrino Example for Large Applications

This example is intended for Padrino users who already have some basic
experience but want an example with more focus on common configuration tasks
required by larger projects:

  - Divide the application into [multiple gems](https://github.com/zenbits/pademo/tree/master/vendors)
  - [Asset pipeline](https://github.com/zenbits/pademo/wiki/Asset-Pipeline) (Sprockets)
  - User authentication (Warden)
  - Testing

The goal is to provide as much configuration code within the least amount of
functionality clutter. Therefore the application is just a couple of hello
world pages with a logging feature. 

If you start a new project and are trying to figure out how some configuration
was done without production code, you might find it here. If you have common
configuration code you reuse, or a more interesting folder layout, do not
hesitate to open an issue for discussion.

## Authentication 

Although Padrino comes with the **admin** module, Warden is a long known
authentication framework for Rack. It is not that complicated to learn and you
can reuse it for plain API modules written in just Sinatra. Since it makes no
assumptions about your code, you will have to specify some concepts about how
you manage your users. Look for the **Pademo::Base::AppCore** extension.

## Testing

Instead of having a central project mounting every gem and providing some
testing, it is normally more convenient if each gem is as self dependent as
possible, including their own testing. 

Since the **base** gem is always mounted at the root '/', all other app gems
must have their own prefix.

Only the **base** gem shows some testing configuration for MiniTest and RSpec.

Although I am not a MiniTest user myself, I wanted to write the shortest
possible test that loads a Padrino with Rack mock to query the routes for
testing.

The RSpec example shows two styles of testing with Capybara. Normally my spec
folder contains three type of tests:

  - spec/unit         Unit tests not requiring Sinatra/Rails/Padrino
  - spec/integration  Tests that do require Sinatra/Rails/Padrino running
  - spec/feature      Tests around a feature and not a specific module or class.
                      Similar to Cucumber but using RSpec with a more verbose
                      syntax in a [RDD spirit](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)

## ORM

No, there is neither Admin nor ORM setup in this example. The previous topics
cover much of what I normally need as basic foundation. The problem with ORMs
is that they have a big impact on the architecture of my apps. It is also much
more likely this is where people needs start to diverge and choices are more
drastic on the long term.

## TODO

There is still room for improvement, cleaning to do, and the testing part is
quite poor. Some people might find interesting if some Javascript + PhantomJS
testing. I might improve things depending on the feedback, but my original
intention was providing the example I wanted to have when I started
with Padrino.

