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

Normally each of your project sub-gems will be pulled from their own repository,
but to ease things I collected them here. Don't do this in real life.

Unlike a monolithic application, every new gem opens the path to try something
different. Want a new testing library? a new layout? a section with
different Javascript backend? Multiple gemified apps promote a separation of
concerns, and among those, there is your code configuration. Use this double
edge source wisely to explore new things and test new ideas without big
refactorings.
 

## Organization

The central gem here is **padrino-base** because it provides all the common
code, configuration, authentication, assets... 

Each gemified app is independent in the sense that they can be mounted for
their own testing. However the **mount** part is always done under the same
prefix as the whole application and the **root** path '/' is reserved for the
**base** gem. Mostly because it must provide common assets and routes like the
ones for authentication.

