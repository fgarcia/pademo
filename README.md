# Pademo

Padrino is an agnostic Ruby web framework that gives you absolute freedom to
build your apps. However such power can make a tad overwhelming putting all the
pieces together for big projects.

After trying different configurations, I realized that the best way to
understand an opinion free framework is a big opinionated demo. One that could
make choices selecting popular tools and show how they can be combined.
This way you will see some best practices that Padrino cannot implement for you
because it would mean forcing a way of doing things for everyone.

Once you go wild, your most ambitious projects will need:

  - [Multiple independent subprojects](https://github.com/zenbits/pademo/tree/master/apps) (aka Rails Engines)
  - An [asset pipeline](https://github.com/zenbits/pademo/wiki/Asset-Pipeline) 
  - [User authentication](https://github.com/zenbits/pademo/wiki/Authentication)
  - [Testing](https://github.com/zenbits/pademo/wiki/Testing)
  - ORM, database, messaging, background workers... all of them important, but
    not yet covered in this demo.

## Target Audience

#### The curious

You already know Sinatra and enjoyed writing some small apps with Padrino. It
was so fun that now you want to build something bigger. What components do you
need? Which layout can help? What are the most popular gems? I need to do
X task with gem Y, is there a live example?

#### The student

After so much magic, so much convention over configuration and DSLs, you
realized that you are part of that large group of people who are very
proficient with Rails but have no idea of Ruby programming. So much scaffolding
never gave you the chance to learn properly the core concepts of web
programming and now you want to master the noble art of coding by thinking.

#### The architect

You love working with Rails, but also understand that some popular patterns,
cultural choices and productivity obsession can enter in conflict with
solid architecture. It feels like setting things up might have some benefits
over dismantling Rails, you need a clean slate to think clearly about your
architecture.

#### The veteran

Long are the hours working on an existing project and short the ones building
the configuration for a new one. You are lost trying to separate the few
lines of configuration code from the large portion of program code. You just
need a clutter free example that is easy to explore.

## Required skills

This example is intended for Padrino users who already have some basic
experience. Some exposure to Ruby gems will help along some Rack based
deployments. 

Basically there is no much hand holding. The examples just try to show the
minimum code to get some tasks done. Do not expect a tutorial explaining each
line.

Never forget that while working with Padrino you might be exposed to all the
stack: Rack, Sinatra, Gems, Ruby, etc. You do not need to master them, but it
is expected that you were willing to learn all the stack as a price for the
extra freedom.

## How to use this project

The best way is to explore the code, look around and run the example. After
a `bundle install` you can explore the Rakefile tasks to get an idea of the
configuration.

All the gems are included in the [apps
folder](https://github.com/zenbits/pademo/tree/master/apps) each one is
intended to teach you something different.

I write my rants in gists and open issues. Some Wiki pages are an attempt to
organize some concepts.


## Future of Pademo

Many parts looks like written under alcohol influence, lots of ideas are
unfinished, cleaning is always needed, there is hardly any testing... but the
worst thing, is that I am not sure I will work too much on this. My dedication
might increase if I find out that this is of any help for other people. Open an
issue, ask questions, drop me an email, even better a tweet! So I can find out
if this is useful.

Seriously, a project like this is not fun if you don't make lots of criticism
or at least insightful comments of what you see here.

