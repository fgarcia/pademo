# Pademo

Padrino is an agnostic Ruby web framework that gives you absolute freedom about
how you build your apps. However such power can make a tad overwhelming putting
all the pieces together for big projects.

After trying different configurations, I realized that the best way to
understand an opinion free framework is a big opinionated demo. One that could
make choices selecting popular tools and show how they can be combined.

Once you go wild, your most ambitious ideas will need:

  - [Multiple independent subprojects](https://github.com/zenbits/pademo/tree/master/vendors) (aka Rails Engines)
  - An [asset pipeline](https://github.com/zenbits/pademo/wiki/Asset-Pipeline) 
  - [User authentication](https://github.com/zenbits/pademo/wiki/Authentication)
  - [Testing](https://github.com/zenbits/pademo/wiki/Testing)
  - An some things like ORM, database, messaging, background workers... all of
    them important, but not yet covered in this demo.

## Target Audience

**The ambitious**

You already know Sinatra and enjoyed writing some small apps with Padrino. You
enjoyed so much that now you want to build something bigger. Which components
do you need? Which layout can help? You might wonder how stupid not using Rails
is in such case, and how much work it will be getting together the basis.

**The student**

After so much magic, so much convention over configuration and micro languages
as DSLs, you realized that you are part of that large group of Rails users who
never learned how to use Ruby. You want to look inside the pieces that make
a web framework and learn the core concepts.

**The architect**

You love working with Rails, but also understand that some popular patterns,
cultural choices and productivity obsession can enter in conflict with
solid architecture, specially when things really grow VERY large. It feels like
setting things up might have some benefits over dismantling Rails.

**The veteran**

Long are the hours working on an existing project and short the ones building
the configuration for a new one. You are lost trying to separate the few
lines of configuration code from the large portion of program code. You just
need a clutter free example that is easy to explore.

## Required skills

This example is intended for Padrino users who already have some basic
experience. Some exposure to Ruby gems will help along some Rack based
deployments. 

Basically there is no much hand holding. The examples just try to show the
minimum code to get some tasks done.

Never forget that while working with Padrino you might be exposed to all the
stack: Rack, Sinatra, Gems, Ruby, etc. You do not need to master them, but it
is expected that you are willing to learn more as a price of the extra freedom.

## How to use this project

The best way is to explore the code, look around and run the example. After
a `bundle install` you can explore the Rakefile tasks to get an idea of the
configuration.

All the gems are included in the [vendors
folder](https://github.com/zenbits/pademo/tree/master/vendors) each one is
intended to teach you something different.

I write my rants in gists and open issues. Some Wiki pages are an attempt to
organize some concepts.


## Future of Pademo

Many parts looks like written under alcohol influence, lots of ideas are
unfinished, some cleaning is needed, there is hardly any testing... but the
worst thing, is that I am not sure I will work too much on this. My dedication
might increase if I find out that this is of any help for other people. Open an
issue, ask questions, drop me an email, even better a tweet! So I can find out
if this is useful.


