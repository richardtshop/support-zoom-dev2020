# 🗂️ Resource: Markdown Style Guide

This Markdown Style Guide will help you format your READMEs and other markdown files properly. This guide also contains special formatting that can be used with Github repositories.

## Headers

Headers are created by using  `#`. The number of `#` used corresponds with the header element that you want to create.

```markdown
# This is an h1 element
```

# This is an h1 element

```markdown
## This is an h2 element
```

## This is an h2 element

```markdown
### This is an h3 element
```

### This is an h3 element

## Lists

Ordered and unordered lists are created using numbers and asterisks.

### Ordered

```markdown
1. First Item
2. Second Item
```

1. First Item
2. Second Item

### Unordered

```markdown
*  First Item  
*  Second Item
```

- First Item
- Second Item

## Emphasis

Underscores and asterisks are used to place emphasis on text.

```markdown
_This sentence will be italicized_
_This sentence will also be italicized_
```

_This sentence will be italicized_  
_This sentence will also be italicized_

```markdown
**This sentence will be in bold**  
**This sentence will also be in bold**
```

**This sentence will be in bold**  
**This sentence will also be in bold**

## Links

Links are created by adding the desired hyperlinked text in square brackets with the URL in parenthesis.

```markdown
[DevDegree\]([https://devdegree.ca (Links to an external site.)](https://devdegree.ca))
```

[devdegree.ca](https://devdegree.ca)

## Images

The syntax for adding an image is similar to adding a link.  The difference is an exclamation point is used before adding the images alt text in square brackets and image URL in parenthesis.

```markdown
![Alt Text](url)

![DevDegree](/images/logo.jpg)
```

![Dev Degree Logo](https://screenshot.click/hi27-35-llx30zv-o67tu6pck.jpg)

### Fenced Code Blocks

Github gives us the ability to create code blocks using  Markdown. You can add an optional language identifier which will give you syntax highlighting.

````markdown
```bash

dev cd hello-world

```
````

```bash
dev cd hello-world
```

````markdown
```ruby

def hello_world

puts "Hello World!"

end

```
````

```ruby
def hello_world
 puts "Hello World!"
end
```

## Tasks Lists

Tasks lists are a part of your pull request (PR) templates here at Shopify. Hyphens and square brackets are used to create list items. Tasks can be marked complete are by adding an `x` next to the completed task.

```markdown
- [x] this is a complete item
- [ ] this is an incomplete item
```

- [x] this is a complete item
- [ ] this is an incomplete item

### More examples

For more examples, check out this [Markdown Cheatsheet (Links to an external site.)](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf).
