# Resource: Pull Requests

## What are Pull Requests?

Let's say that you're a writer. As a writer, editors and publishers need to view your work before publishing. The editors and publishers are not going to rewrite over your original manuscript; they will notate and add any suggestions and revisions and they will be reviewed by you for approval. As developers here at Shopify, we'll be taking similar steps when adding, removing, or changing features on the different projects you'll work on. Any changes you make to a project will be notated and reviewed before the code is merged and becomes a permanent feature. We'll be using pull requests (PRs) to track these changes.

Pull requests let you tell others about changes you've pushed to a branch in a repository on Github. Once a pull request has been opened, you can discuss and review potential changes with collaborators and add follow-up commits before changes are merged into the base branch.

## Using Feature Branches

We already know that any work we do on a project should not be completed on the main branch. You'll create a feature branch that has the changes you've made to the project and that branch will be reviewed in the pull request.

Feature branches are short-lived and limited in scope, so if you need to change a different feature, create another branch for it. You'll open separate pull requests for each branch.

When naming a feature branch, make sure the name is descriptive. An easy way to make a branch name would be to complete the statement "If added to the project, this will..." Your feature branch name should be lowercase with dashes in between words (which is called _kebab_ case).

Examples

```markdown
return-username
fixed-checkout-button
```

To create a new branch:

```markdown
git checkout -b [branch name]
```

Once you've made your changes using your Git workflow, it's time to push your changes to the repository using

```markdown
git push origin [branch name]
```

and create a pull request for review.

Creating a Pull Request
To open a pull request using the dev tool, enter on your terminal:

```markdown
dev open pr
```

This will open up a tab and redirect you to the GitHub page where you need to provide information on your feature change. Make sure to answer the three questions, providing enough context on what changes you made since your reviewers may not know what the project is.

The pull request template below will be on every project you work on throughout the training path. Note: 🎩 or tophat means that you checked it manually _before submitting_.

```markdown
What are you trying to do?

**What changes are being made?**

Why is this change needed?

**Explain why the change is needed.**

How did you resolve the issue?

**Explain how what you did resolves the issue.**

Checklist

- [ ] I have 🎩'd this locally.

  - [ ] I have provided instructions on how to run the app.

- [ ] I have requested reviews.
```

## How are my Pull Requests reviewed?

You will have two reviewers for each pull request. They will be assigned under the "Reviewers" on the right sidebar. The reviewers will leave comments for anything that needs to be changed and will mark the pull request as "Approved" once the changes have been accepted.

You can review this completed pull request [here](https://github.com/DevDegree/basics-of-git-workshop/pull/3#event-3603921509).
