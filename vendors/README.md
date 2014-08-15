# Gemified apps 

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

