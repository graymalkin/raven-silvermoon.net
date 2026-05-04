# Raven Website

![](./public/raven.png)

This is the source code for the Raven website. It is a Hugo website which needs to be built with Hugo version `0.111.2`.

With that version installed `hugo serve` should give you a server on localhost to check any changes.

The website is built and deployed automagically by a github action. See [here](https://github.com/graymalkin/raven-silvermoon.net/blob/main/.github/workflows/hugo.yaml).


To simply add a new page to our blog, copy the structure of one of the pages in `content/`. The folders are saved with dates, but unlike Jekyll that is not the date that Hugo uses. You need to set the front matter in the `index.md`.

```
---
title: "Welcome to Raven"
date: 2018-03-14
author: Quelle
type: blog
---

The content goes here
```

Hugo tries to automatically split the post so that it appears nicely in the index. It normally drops _before_ the first image -- which is bad for the guild website where most of the posts are kill screenshots.

To prevent this, you can explicitly set the breakpoint by adding the `<!--more-->` comment:

```
---
title: "Queen Azshara Normal Done!"
date: 2019-07-23
author: Quelle
type: blog
---

So I was not there to take a screenshot on Sunday, so I had to make a recreation of what I imagine the pose would have been like for the kill!

![Queen Azshara Normal Done!](/posts/2019-07-23/Azsharanormal.jpg)
<!--more-->
```

The picture for the Queen Azshara kill will now show in the index.