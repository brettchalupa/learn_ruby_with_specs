# Learn Ruby with Specs (LRWS) 💎♻️✅

```
          _  .-')    (`\ .-') /` .-')
         ( \( -O )    `.( OO ),'( OO ).
 ,--.     ,------. ,--./  .--. (_)---\_)
 |  |.-') |   /`. '|      |  | /    _ |
 |  | OO )|  /  | ||  |   |  |,\  :` `.
 |  |`-' ||  |_.' ||  |.'.|  |_)'..`''.)
(|  '---.'|  .  '.'|         | .-._)   \
 |      | |  |\  \ |   ,'.   | \       /
 `------' `--' '--''--'   '--'  `-----'
```

[logo made with patorjk.com's TAAG](http://patorjk.com/software/taag/)

An interactive, test-driven course to learn the basics of Ruby with RSpec.

Project links:

- [Website](https://lrws.code.brettchalupa.com)
- [Source on GitHub](https://github.com/brettchalupa/learn_ruby_with_specs)

## Introduction

There are so many ways to learn how to code, from reading books to screencasts to taking classes. I've found that I learn best when there's a bit of autonomy for me to research and write the code on my own but with a bit of support and guidance.

That's what _Learn Ruby with Specs (LRWS)_ is all about. Teaching you the basics of the language, driven by specs. What this means it that the answers aren't provided. You need to investigate and learn on your own. 🕵️‍♀️

By searching line and learning, you'll better internalize what you're learning. The specs will also ensure correctness—that the code you're writing does what you intend it to. Through this process too, you'll gain familiarity with the way specs are written.

### Notes on Readiness

**Work in Progress** -- use at your own risk! I can't guarantee the ordering and lessons will work and won't change. I'm still working on getting this together.

Lessons prefixed with `xx_` means they haven't found their way into the lesson plan yet. They're draft lessons that will eventually be assigned a number in the sequence.

### Prerequisites

If you are absolutely brand new to programming, I would not start with LRWS because it requires a few things: using the command line, understanding specs/tests, and what to search for online. The specs are guiding and helpful, but they are, at the end of the day, just code. Learning how to code from scratch by reading the specs could be a bit challenging, even though RSpec, the library used in this course, reads a lot like the English language.

So some prerequisites this assumes:

- A little bit of time spent coding before, [The Ruby Quickstart](https://www.ruby-lang.org/en/documentation/quickstart/) is helpful here
- Comfort with running commands via the Terminal, Shell, or Command Prompt
- An understanding of the difference between code and tests/specs. Programmers write tests (a.k.a. specs), which is code that tests what other code does. This helps ensure everything is working correctly.

### Why Ruby

Ruby's natural syntax is quite intuitive. It's a mature, multi-purpose language with lots of resources out there. I've been using it for over 10 years full-time, and while it has its shortcomings (as all languages do), it's worthwhile and a lot of fun to use!

### Why RSpec

[RSpec](https://rspec.info) is a behavior driven design (BDD) testing framework for Ruby. If all of that means nothing to you, that's okay. Really. It's just a library (third-party code written by others that we can use, a.k.a. gem in Ruby's parlance) that helps us write tests for our code using an approach that allows us to describe in details words what our code does and why.

Ruby has its own baked-in testing library, as most languages do. It's called `Test::Unit`. It certainly works and does the trick. But every single place and codebase I've worked in has used RSpec. I'm not sure if that's anecdotal, but it's what I'm most familiar with, and it allows for a level of verbosity with describing the code's behavior that I think will be particularly helpful for someone learning RSpec.

## Get Started

### Developing Locally (Complex)

0. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/), I use and prefer [RVM](https://rvm.io)
1. [Use this repo as a template for youself](https://github.com/brettchalupa/learn_ruby_with_specs/generate), as you'll need your own repo to add your code to
2. Clone your new repo
3. Install the needed dependencies with with bundler: `bundle install`

Alternatively, if you don't want to use Git, you can [download an archive of the project](https://github.com/brettchalupa/learn_ruby_with_specs/archive/refs/heads/main.zip) and work from that.

### GitHub Codespaces (Simple, Limited Access)

If you have access to [GitHub Codespaces](https://github.com/features/codespaces), you can get the project set up and running right in your browser, with Ruby and RSpec installed and ready to go. You can even open Visual Studio Code on your Desktop and work from there.

1. [Use this repo as a template for youself](https://github.com/brettchalupa/learn_ruby_with_specs/generate), as you'll need your own repo to add your code to
2. From your newly created GitHub repository, click "Code", select "Codespaces", and click "Create codespace on main"

## Run the Specs

In order to run the specs, use this command:

```
bin/rspec
```

That will run all of the tests in all of the lesson folders. They'll all fail because you haven't written any code yet. You'll have completed this course when all of the specs pass.

When a test fails, RSpec outputs a detailed explaination of what failed and why:

```
learn_ruby_with_specs(main+*) $ bin/rspec --next-failure
Run options: include {:last_run_status=>"failed"}
F

Failures:

  1) #hello_world prints a greeting to stdout
     Failure/Error:
       expect { hello_world }
         .to output { "Hello, world!" }.to_stdout

       expected block to output to stdout, but did not
     # ./01_hello_world/hello_world_spec.rb:19:in `block (2 levels) in <top (required)>'

Finished in 0.01161 seconds (files took 0.04234 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./01_hello_world/hello_world_spec.rb:18 # #hello_world prints a greeting to stdout
```

When a test passes, it outputs they were run successfully

```
learn_ruby_with_specs(main+*) $ bin/rspec 01_hello_world/

Randomized with seed 41099

#hello_world
  prints a greeting to stdout

Finished in 0.00126 seconds (files took 0.04161 seconds to load)
1 example, 0 failures

Randomized with seed 41099
```

Seeing a bunch of failing tests isn't very helpful, so here's how to use this project and progress through the lessons.

## Course Structure

Each lesson is organized into its own folder, prefixed with the number of the lesson. For example, `01_hello_world`. This is the first lesson.

Within an lesson is one or more files ending in `*_spec.rb`. These are RSpec test files, which contains the failing specs that you need to make pass. Also included are any empty Ruby files that will contain the actual code you write. More on that in a second. So, for example:

```
learn_ruby_with_specs(main+) $ ls 01_hello_world/
hello_world_spec.rb
hello_world.rb
```

- `hello_world_spec.rb` contains the test code that I've written, which you won't have to change at all.
- `hello_world.rb` is the blank Ruby file in which you'll write the code to complete the lesson; your code is always written separate from your specs in Ruby, so good to start now.

A lesson with an `x` after the lsson number, like `04x1_strict_double` is a bonus lesson that immediately follows up that lesson. This keeps an order to lessons while allowing others to be slotted inbetween where appropriate.

A lesson that starts with `xx` means it hasn't yet been placed in the lesson sequence. You're welcome to complete it, but it'll get renamed and moved eventually.


## Run the Specs for a Given Exercise

You can run the specs for a given lesson by targeting the folder, example:

```
bin/rspec 01_hello_world
```

## Run the Next Failure

RSpec has a convenient way of only running the next failing spec so you can progress one-by-one to make the tests pass. Do this by running:

```
bin/rspec --next-failure
```

When you fix the next failing test and run the command again, it'll keep running until it finds the new next failing spec.

## Process

Progress through each lesson by making the tests pass. You'll write Ruby code in the empty Ruby files, run the tests, and then make adjustments if the tests still fail.

Steps:

1. Run the specs for the lesson you're working on
2. Don't change those specs though!
3. Write code in the non-spec Ruby files
4. Run the tests to see if they pass
5. If they pass, move on to the next lesson
6. If they fail, there's still work to do

Once an entire directory's specs pass, that lesson is is complete. ✅

The course is complete when `bin/rspec` succeeds for all lessons. 🎉

## Run Specs for a Given Exercise

You can run RSpec against a given lesson folder with: `bin/rspec PATH_TO_FOLDER`. So, for example:

```
bin/rspec 01_hello_world
```

Will run the specs for the first lesson.

## Tips & Advice

- 🥽 Read the specs, then re-read them if you are stuck
- 🔎 Read the errors and stacktrace, this is an important skill; the errors are often quite helpful
- 💻 Search online; this mirrors the actual process of coding where you get stuck and need to learn more
- ⌨️ Use the interactive Ruby REPL to experiment with Ruby; start it with: `irb`

## Resources

- [LRWS Discussion Board](https://github.com/brettchalupa/learn_ruby_with_specs/discussions)
- [The Ruby Quickstart](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Learn Ruby the Hard Way](https://learnrubythehardway.org)
- [My screencasts](https://www.youtube.com/c/Monoso/featured) — I make programming screencasts, specifically about Ruby and RSpec. Playlists that might be of interest:
  - [Test Driven RSpec](https://www.youtube.com/playlist?list=PLr442xinba86s9cCWxoIH_xq5UE9Wwo4Z) — series on RSpec
  - [The Fundamentals of Ruby](https://www.youtube.com/playlist?list=PLr442xinba85DO691UMttOgaWVKVEkIZx) — general Ruby programming topics

## Solutions

TODO: create solutions repo

## Getting Updates

I plan to add new lessons to this course from time to time. The best way to get notified is to [watch the project on GitHub](https://github.com/brettchalupa/learn_ruby_with_specs). 👀 This will notify of you new releases.

When new releases are made, you can fetch the latest version by following these steps:

1. In your course codebase, ensure you have an `upstream` remote pointing to the source repository: `git remote add upstream git@github.com:brettchalupa/learn_ruby_with_specs.git`
2. Fetch the latest code from `upstream`: `git fetch upstream`
3. Merge in the latest code into your repo: `git merge origin/upstream --allow-unrelated-histories`

That'll pull in the latest changes, which will be new lessons and any adjustments to existing ones. You can then run the specs with `bin/rspec` and work on those new lessons.

## Misc

### Feedback

I'd love to know what you think! Please let me know in [Discussions](https://github.com/brettchalupa/learn_ruby_with_specs/discussions) or [on Twitter](https://twitter.com/brett_codes).

### Contributing

If you have ideas for new lessons or how to make an existing one better, please open up a Pull Request on GitHub with your proposed changes. Thank you!

A few notes on contributing:

- Because the sequence of the lessons is intentional, we'll have to collaborate on where to place a lesson.
- Running `bin/spec` on a repo without solutions should output all of the failures for every spec. This means that all referenced constants must be present.

### RSpec Style

There are some potentially contentious decisions for style when it comes to the RSpec found in this project. They are generally made with intention though.

#### Multiple expectations even in unit tests

I don't follow a hard and fast rule of one expectation per unit test. That's generally followed, but there are times where that makes less sense. How I instead think about it and how it's reflected in these specs are that non-obvious test cases require their own examples and language to describe them.

Let me use an example to be more clear. Let's say there's an example testing an exception is raised in Ruby when an argument is passed that is `nil` or empty string `""`. I'd probably just test both of those in the same example if they have the same output.
