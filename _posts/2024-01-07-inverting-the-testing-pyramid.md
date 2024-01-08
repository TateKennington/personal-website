---
layout: project
title: Inverting the Testing Pyramid
description: ""
thumbnail: ""
---
Testing and Test Driven Development (TDD) are contentious in the world of software engineering. Developers are a contentious bunch, so this should come as no surprise. I am loathe to further muddy the waters, but I too am a developer. To contend is in my nature. I am by no means what one would traditionally consider an "expert" on software testing, but I have been stewing on the current state of testing for a while in search of something better. This post is my attempt to collect these ideas on a new approach to testing into a single semi-cohesive and semi-coherent whole.

## What's in a name?
TDD's first great weakness is that it groups tests into three (at least) types: Unit, Integration and End-to-End (E2E). As the astute reader might have noticed, these names are not particularly clear or descriptive and classifying tests into one of these categories is more an art than a science. A quick Wikipedia search would suggest that automated software testing and the ideas that formed the basis of TDD first emerged in the late 90s before being rediscovered in the early 00s as the TDD we know today. Over the intervening decades, the original meaning of these categories has been warped and lost to time. What this means today is that no two people see the same TDD. Debates on TDD quickly devolve into semantic arguments over what TDD really means and negative experiences are dismissed as not true TDD.

So that we can all be on the same page, I want to propose a new set of categories for grouping tests in hopefully a more clear-cut way. These categories are Functional, Interface, and Application.

### Functional
Functional tests are used to test individual functions. They are the most specific of the three types and should be used most sparingly. Functional tests excel at ensuring the correctness of particularly complicated, mostly pure functions. If you're writing a piece of code and struggling to keep all the combinations or control flow in your head at once, then that's a good indication to make it a separate function with a test. In practice, these tests should be a part of the same module/library/object as the function under test and be able to observe its internal state and private variables as needed.

### Interface
Interface tests are used to test the publicly exposed functions and variables of a module/library/object. These tests excel at enforcing the contract/behaviour of the module/library/object. Unlike functional tests, these tests take the form of another module/library/object that uses the code under test. This means they can't inspect its internal state or private variables and must rely totally on public outputs.

### Application
Application tests are used to test the final output of your application. Application tests are similar to interface tests in that they enforce your program's high-level behaviour/contracts but from a user-facing perspective instead. Also, they are useful for catching potential breaking changes before they reach downstream consumers. Application tests run as a separate process from your application. This means they can only interact using your program's communication protocol, e.g. HTTP, stdio, etc., and can't inspect the state of your program beyond that.

## A new best practice for writing tests
Now that we have all the definitions out of the way and everyone is on the same page, how do we turn this newfound perspective into a testing methodology? I think there are three key pillars when it comes to putting this into practice:

1. Inverting the testing pyramid
2. No mocks
3. Behaviour driven tests

### Inverting the testing pyramid
In TDD, the testing pyramid is the idea that most of your automated tests should be unit tests, with integration tests making up a smaller proportion and E2E tests an even smaller proportion again. The idea is that as you move up the pyramid, the slower the test and the higher the maintenance cost. As such, you want proportionally fewer of those tests. 

I theorise that we should flip the testing pyramid on its head. When setting out to write tests, your first port of call should be trying to write an application test. When an application test isn't suitable or you need a more specific test, you should fall back to an interface test. After that, if you need even more specificity, you should fall back to a functional test.

As for the idea that application and interface tests are too slow and costly to make up the bulk of your testing suite, I'm not sure I buy it, at least not for all applications. In my experience, you can quickly spin up a CLI or REST server, fire off some jobs in parallel and then check the results quickly. It's only when a GUI or a headless Chrome gets involved that I've seen test performance suffer, but I've found those kinds of applications to be pretty resistant to testing in general. Likewise, I find the engineering required to set up the test harness and mocks necessary to support a test suite of mostly unit tests is far more expensive than setting up a harness to just run the code.

### No mocks
Life is simply too precious and fleeting to waste it on mocks. And from a non-philosophical perspective, mocks also have at least one major flaw when building tests with this approach. Mocks violate the visibility restrictions laid out for our tests. With mocks, it's tempting to write assertions based on what data is passed to the mock and how, e.g. with a function spy, but unless we're mocking a public datastore, these are implementation details our test shouldn't know about. This leads to tests that are overly specific and brittle to refactors.

So what's the alternative? Simply use the dependency in the test. More specifically, there are a few ways to go about this:

1. If your dependency is external, like an S3 Bucket, you can create a dedicated testing instance.
2. You can use a more test-friendly alternative with a compatible API. For example, using an SQLite database only when testing.
3. If all else fails, you can create a fake version of your dependency with a stripped-down set of behaviours. Don't just stub out all the functions and have them return what you need for the test actually have some internal model of the thing you're mocking. That way, you won't accidentally mock out all the logic you're trying to test.

Some classic objections to not using mocks are that external dependencies in your tests can make them more flaky and make test failures more difficult to isolate in instances where you have dependencies between modules in your code. Again, I'm not sure that I buy it. In the first case, if you have a dependency that can flake out and fail during a test, it can probably flake out and fail the same way in production. From my perspective, that's a valuable indication that I should either fix the root cause or try to handle that in my code. In the second case, I will concede that with this approach to testing, you won't be able to pinpoint the location of a bug just from a failing test(s) like you may be able to do with well-executed unit tests. However, this testing style has wider coverage with less testing harness code, so it's easier to approach a failing test with standard debugging techniques, but it is still a trade-off.

### Behaviour Driven Development
When writing your tests, you should target the desired behaviours of your code in a high-level, declarative way. You want to avoid tying specific implementation concerns into your test assertions as much as possible. One way to do this is to follow a testing format like Given-When-Then or use a DSL like Gherkin (of Cucumber fame). These ideas are taken from the Behaviour Driven Development (BDD) school of TDD, and I think they're actually pretty good. BDD has somewhat of a bad reputation because of the idea that by writing tests in a more natural DSL we can use them to communicate how development is progressing to non-technical business functions. In fairness, that idea is madness. No non-technical person wants to read any DSL at any point, but that's no reason why technical people can't have nice things.

When you write your tests as behavioural specifications, they can become very powerful. This is because individual tests carry much more semantic meaning than they otherwise would. Over time, your test suite can function as a catalogue of documented examples of how to use your app, understanding the test's intent becomes easier, and new tests are much easier to write.

Finally, I thought I would conclude with some high-minded ideology to tie the whole room together. With this approach, we want to fully leverage tests as tools to boost developer productivity. Instead of aiming to hit 100% code coverage, we focus on covering the high-level behaviours of our program, allowing developers to skip long manual setups and jump to where they need to be in the code. Instead of making many small tests, we focus on broad tests that carry as much information as possible and can be used as examples, documentation, and records. And instead of trying to completely harness and isolate our tests, we focus on matching production conditions as much as possible. If I were being extra cute, I would name this approach Development Driven Testing.

## Making good on the promises of Test Driven Development
Now that we've hammered out the bird's eye view and everyone's in agreement, let's look at how this approach fits into a classic TDD workflow.

### Red
In classic TDD, you start development by writing a failing test for your desired functionality. This is generally a good idea because it serves as a test for the test. In particular, it verifies that the test at least can fail and isn't just testing nothing. However, unit tests are very granular and often require some harnessing and mocking to ensure isolation and verify the test results. This means it's very difficult to begin writing a unit test without referring to a concrete implementation. Essentially, fully planning out the unit's structure in advance is required.

In contrast, it is much easier to write an application or interface test in advance because they suppose much less about the structure of the code you're going to write. Writing these kinds of tests can actually serve to help plan your implementation. In writing the test, you get to think through the API you're about to write and see the experience of using it first-hand. More often than not this exposes pain points and oversights that weren't obvious when designing the API in theory.

### Green
Now that you've written our test, it's time to start putting it to use to write the code. Even before you begin writing the implementation, you can still benefit from the fact that your tests can serve as a spec for your feature. At this point, your feature is planned and can be handed off to another developer if needed or put down, knowing that you have enough documentation to come back later. This is an effective tool for collaboration and onboarding because the tests are fast and easy to write without an implementation but more precise than a description on a ticket.

Once you start to implement the feature, the tests can also accelerate development and debugging. Because you're avoiding mocks, you are more able to pause a test and inspect its running state. If you have a program that is writing files to the disk or updating a database, those files and that data are there for you to look at. If you're testing a web server, you can open it up in a browser. This is a huge benefit when trying to diagnose problems. Additionally, because your tests are broader in scope and as unintrusive as possible, it's far easier to attach a debugger or put a log where you need it and step through the execution.

### Refactor
Because you've written your tests to strictly observe our program's visibility rules, you can actually use your test suite to enable so-called fearless refactoring. In fact, with a test suite of application tests, you could delete the original codebase entirely and rewrite it in any language you choose without needing to change any tests. In general, your tests should only break after a refactor if the public contract of the thing you're testing has changed or been deleted entirely. Functional tests have the most risk of this happening, and that's why they're used sparingly. Otherwise, most of your tests are interface and application tests, rendering most of your test suite immune to most refactoring.

In the case where a change does cause a test to break, then this sends you a useful signal. Tests should only break when some part of the publically observable interface of your code has changed, meaning your refactor includes a potentially breaking change. From there, you can use that broken test to see exactly what use case has been broken and either add backwards compatibility or make an informed choice to proceed with the breaking change. Either way, you can have confidence that you aren't forgetting about an old feature and blindsiding your users accidentally.

## The Unhinged Zone
Unfortunately, I am but a mere man, so I haven't totally thought this approach out to all its logical conclusions or tried it for all use cases. Here in the Unhinged Zone™,️ I leave all my ramblings as an exercise to the reader.

### UI Testing
As I said above, I've found that automated testing for GUI applications is particularly diabolical. This is also particularly unfortunate because most of my experience comes from trying to do testing on web apps, the most diabolical of all the GUI apps. In this case, Application tests are mostly out of the question because browser automation is too slow and flaky, and most UI framework components lack a good interface for Interface testing. This leaves Functional tests, which essentially take us back to doing regular TDD with all its problems if we can even find any functions worth testing.

Looking at it through this lens, the lack of an interface of framework components might be the root cause of why web apps are so hard to test. There's no strong behavioural contract between any collection of components. Instead, its contract is with the framework, i.e. it gives the component props and state, and in return, the component gives back a child component tree. Ideally, we'd have some kind of interface where we can feed the component user actions and it could feed us back state changes independent of its rendering logic. I don't really understand functional reactive programming or the Elm architecture, but something like that sounds a lot like how I would imagine that those things work. Otherwise, maybe what we need is a child component tree that is slightly more abstracted from the DOM so testing code can interact with it at a higher level.

It also occurs to me that the problems I have seen with Application testing using browser automation are either skill issues or tooling issues. On the skill side, I could imagine a good practice of tagging all the relevant UI components with data attributes so the test can find them in an implementation-agnostic way, along with some stripped-down, test-only routes might take a lot of the edge off. It would also be nice if headless chrome wasn't so slow and flakey.

### Issues of scale
In translating E2E into Application tests, we do lose a little bit of top-end. In particular, E2E tests can include tests that span multiple applications, in the case where your application might involve multiple servers to handle a particular job, for example. I don't have much experience writing automated tests at this scale, but I would find it very aesthetically pleasing if the solution was just to extend the pyramid up a level. So we have something like a testing server, which talks to the servers under test using their public communication channels, for example, a message queue. I can't imagine having too many tests like that would be very fast or ergonomic, so I'd probably put those in the "use sparingly" bucket as well. 