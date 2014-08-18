# Gemified apps 

Once you start using multiple gemified apps it is quite safe to assume that
there will be a **core** gem providing common resources. Furthermore this
*sharing* will not only happen through Ruby **require** calls, but also through
the URL of your app,  like your `'/assets'` and `'/api'` paths.

In this demo, the core gem is **padrino-base** and it is the one taking control
of your home path at `'/'`. All other gems will be mounted within a prefix.

Although the root of this demo takes care of mounting all gemified apps for
you, we want each app to be as independent as possible. This means that they
must support things like their own testing, boot configuration, assets, etc.

For production you will use the [Rack
configuration](https://github.com/zenbits/pademo/blob/master/config.ru) at the
root of this project, but during development most likely you want to load the
bare minimum for your app. If one gem requires all other gems to be loaded and
running, maybe there is a coupling problem. 

If you call `padrino s` within the root folder of a gemified app, the core gem
will be mounted at `'/'` and the gem itself on its own prefix like `'/my-gem'`
(this should be the same in deployment).

Ready to explore the examples?

## Recommended order 

Since **pademo-base** provides the `'/'`, `'/assets'` paths and other common
resources, you might want to skip it for later and start with easier examples:

Start with **pademo-hello** a very simple example printing just a hello world
message under one section of your app at `'/hello'`.

Move to **pademo-pipeline** which you can see at `'/pipeline'` and grasp the idea
that two assets pipelines are needed.

**pademo-sinapi** shows how a Sinatra app can be added to Padrino. It provides
the API call used for an Ajax call demo in **pademo-tester**

**pademo-tester** focus on how to setup your testing environment for Rspec and Capybara.

## Contributions

After covering the recommended gems, you will have an understanding of the
ideas I wanted to provide with this demo. Now you can contribute 
new configuration examples and verify if your configuration and/or
workflow is compatible with this style of gemified project. 

Ideally you should focus on integrating one tool or concept per gem. The idea is having a
unique place with only one task you can copy or use as reference next time you need to setup
something. Do not forget opening an issue with your idea and wait to see if I have some 
advice before starting your implementation.

Each new gem could also an idea for a blog post. If you write one do not forget
linking to your post, references to research material and specially the issue
which you used to announce your contribution. That will provide a place for
discussion.
