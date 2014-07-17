# Padrino Example for Large Applications

This example is intended for Padrino users who already have some basic
experience but want an example with more focus on common configuration tasks
required by larger projects:

  - Divide the application into multiple gems
  - Asset pipeline (Sprockets)
  - User authentication (Warden)
  - Testing

The goal is to provide as much configuration code within the least amount of
functionality clutter. Therefore the application is just a couple of hello
world pages with a logging feature. 

If you start a new project and are trying to figure out how some configuration
was done without production code, you might find it here. If you have common
configuration code you reuse, or a more interesting folder layout, do not
hesitate to open an issue for discussion.

## Gemified apps 

One of the most valuable configuration features for the future of your larger
apps is implementing each major component on its own gem. With the added
isolation you can:

  - speed up your tests 
  - have happier teams (like when a fence make good neighbors)
  - have more control about your deployment 
  - outsource components without releasing the full codebase
  - think more in a service oriented architecture
  - and much more!

Although some of the above claims need to be taken with a grain of salt and
there will be some headaches when moving away from a monolithic codebase,
fragmenting into multiple gems can pay off on the long term.

The example is made of two gems included within the **vendor** folder so you can
quickly test things. Don't do this in real life and use instead an external
repository.

The gem **padrino-foo** just shows a hello world page once it is mounted from the
**config/apps.rb** folder. This is the basic example for any extra gemified app
you want to add to your projects.

For the common code shared between all your apps, like the layout,
authentication, assets, code... there is the **padrino-base** gem. 

While each gemified app like **padrino-foo** is mounted within its own prefix, 
the ***base** gem is mounted as the home route. Mostly because it must provide
common assets and routes like the ones for authentication.


## Pipeline

There is one Sprockets pipeline for each single app along the main one mounted
by the **base** gem. Therefore most of the time you will get resources from two
base urls:

    /assets/application.css
    /my_foo_app/assets/settings.css

## Authentication 

Although Padrino comes with the **admin** module, Warden is a long known
authentication framework for Rack. It is not that complicated to learn and you
can reuse it for plain API modules written in just Sinatra. Since it makes no
assumptions about your code, you will have to specify some concepts about how
you manage your users. Look for the **Pademo::Base::AppCore** extension.

## Testing

Instead of having a central project mounting every gem and providing some
testing, it is normally more convinient if each gem is as self dependent as
possible, including their own testing. 

Since the **base** gem is always mounted at the root '/', all other app gems
must have their own prefix.

Only the **base** gem shows some testing configuration for MiniTest and RSpec.

Although I am not a MiniTest user myself, I wanted to write the shortest
possible test that loads a Padrino with Rack mock to query the routes for
testing.

The RSpec example shows two styles of testing with Capybara. Normally my spec
folder contains three type of tests:

    spec/unit         Unit tests not requiring Sinatra/Rails/Padrino
    spec/integration  Tests that do require Sinatra/Rails/Padrino running
    spec/feature      Tests around a feature and not a specific module or class.
                      Similar to Cucumber but using RSpec with a more verbose
                      syntax in a [RDD spirit](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)

## ORM

No, there is neither Admin nor ORM setup in this example. The previous topics
cover much of what I normally need as basic foundation. The problem with ORMs
is that they have a big impact on the architecture of my apps. It is also much
more likely this is where people needs start to diverge and choices are more
drastic on the long term.

## TODO

There is still room for improvent, cleaning to do, and the testing part is
quite poor. Some people might find interesting if some Javascript + PhantomJS
testing. I might improve things depending on the feedback, but my original
intention was providing the example I wanted to have when I started
with Padrino.

