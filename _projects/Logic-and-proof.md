---
layout: project
title: Logic And Proof
description: The exercises from the book "Logic and Proof" in Lean
thumbnail: /projects/thumbnails/logic-and-proof.jpg
repo: https://github.com/TateKennington/logic-and-proof-exercises
tags: Lean Maths
date: 2021-02-20T10:20:00Z
---
Computer proof assistants have been a hot button issue, at least in my mind, for some years now. I’m sure you can understand why the idea of a program that could automatically check your proofs for correctness would be an appealing prospect for an undergraduate maths student. I was enchanted by the idea that I’d be able to leverage my knowledge of programming to get perfect marks in my maths homework, however, as is often the case, the reality was much crueller than the dream. Over my undergrad years, I made a handful of attempts to learn a proof assistant but was rebuffed by a general lack of educational material. I settled on <a href="https://leanprover.github.io">Lean</a> as my assistant of choice since it at least offered some kind of onboarding pathway, unlike something like <a href="https://coq.inria.fr">Coq</a> which remains totally impenetrable to me. My progress through the Lean learning material was limited however, I found that the suggested book, <a href="https://leanprover.github.io/theorem_proving_in_lean/">Theorem Proving in Lean</a>, far too difficult to follow as a newcomer to the topic. But things were different this iteration of the cycle as I also dug into some of the secondary book recommendations, including the titular <a href="https://leanprover.github.io/logic_and_proof/">Logic and Proof</a>. This book has proven not only to be a great introduction to Lean, but also a great introduction to the underlying topic of mathematical logic. This project will chronicle my endeavours to work through the book and complete all (read most) the relevant exercises.
<br/><br/>
With this project, I’m going to be trying a different format for the website. Instead of waiting until I’ve finished the project, which let’s be honest is ambitious, before doing the writeup à la Rlox, I’m going to try to give written project updates as they happen. Hopefully, this will make it easier for me to get content out to you, my loving audience, and also help make the projects meaningfully distinct from my blog posts.

<h3>30/05/2021</h3>
This first progress update will cover the first 5 chapters of the book and the exercises from chapter 3. I’ve already gone a bit off the rails and rushed into doing all the chapter 3 exercises in Lean instead of writing out the proofs in natural deduction. My initial plan was to embed some LaTeX rendering in the page and display the natural deduction proofs in the page alongside the proof in Lean. After doing some research on <a href="https://www.mathjax.org">MathJax</a>, <a href="https://katex.org">KaTeX</a>, and <a href="https://www.logicmatters.net/latex-for-logicians/nd/">natural deduction packages for LaTeX</a>, I decided that wasn’t going to work very well, look very nice, and would essentially require me to program every proof twice. Luckily for you, all the proofs are available on <a href="https://github.com/TateKennington/logic-and-proof-exercises">Github</a> and are significantly easier to follow than the natural deduction equivalents anyway. 
<br/><br/>
Even though I’m only just beginning, I have encountered a little bit of the frustration of having to make my proofs completely rigorous that you often hear about with proof assistants. In particular, not being able to use some of my common tools, such as proof by cases, has been difficult, although I hope the book will build up to those as it goes on. At this point, it is difficult to picture how more complex proofs will come together, I know Lean has an extensive library of proofs but it is just hard to imagine how something like undergrad Linear Algebra could be expressed in Lean. Not that I don’t believe it’s possible but more that I’m eager to start proving more substantial results.