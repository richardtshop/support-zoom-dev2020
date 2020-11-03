# 🗂️ Resource: Debugging with Byebug

## What is ByeBug

Byebug is a simple to use and feature rich debugger for Ruby. The debugger permits the ability to understand what is going on inside a Ruby program while it executes and offers many of the traditional debugging features

## Getting Started with ByeBug

ByeBug is a Ruby Gem and as such needs to be added into our Ruby Projects to gain its functionality. In your projects GEMFILE include the line gem "byebug". Save the GEMFILE and run dev up to load ByeBug into your project.

```markdown
dev init
```

```markdown
dev up
```

```markdown
Edit GEMFILE
```

```markdown
dev up
```

You need to include ByeBug into and .rb file you wish to use it. At the top of your .rb file write require "byebug". To place a breakpoint anywhere in your code simply type byebug on any line.

- **require "byebug"** (Placed at top of .rb file to load ByeBug)
- **byebug** (Used to place a breakpoint in your code)

## Most Important Commands

- n (next) - move to the next line of code. if it is a function call **_jump over_** the function.
- s (step) - move to the next line of code. if it is a function call **_step into_** the function.
- c (continue) - allows the program to continue running until encountering another breakpoint or exiting
- q (quit) - exits the debugging session

## [ByeBug Cheat Sheet](https://cheatography.com/yarik/cheat-sheets/byebug/)

![ByeBug Cheat Sheet](https://screenshot.click/byebug_cheatsheet.jpg)
