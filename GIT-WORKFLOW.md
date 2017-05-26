# Git workflow for contributing to OSM-Carto

This document suggests guidelines on how contributors should operate when collaborating to OpenStreetMap Carto through pull requests (PRs) via Git and GitHub.

Basically, the Fork, Branch & Pull model adopted by OpenStreetMap Carto considers the following steps:

- Log to GitHub with your account (create one if you do not have it)
- Fork the OpenStreetMap Carto GitHub repository.
- Clone the forked repository to your local system.
- Add a Git remote for the original repository.
- Create a feature branch in which to place your changes.
- Make your changes to the new branch (and not to your master, which is needed to be set even with gravitystorm:master). 
- Develop your changes in a separate directory (not directly to the staging folder) and, when finished, stage (copy) your changes to your local git folder related to the branch.
- Perform the OpenStreetMap Carto scripts (run scripts/yaml2mml.py in case of modification of project.yaml).
- Commit the changes to the branch and add an appropriate comment.
- Push the branch to GitHub.
- Open a pull request (PR) from the new branch to the original repo (and not to your master, which will always have 0 pull requests)).
- Add appropriate comments to your PR.
- Your pull requests will then be reviewed and discussed.
- You might be asked to rework your code (in case, you have to perform some update on your development folder, followed by stage, commit, rebase and push operations)
- Clean up your branch after your pull request is merged.

Please, check also the reference documentation for setting up the environment and for contributing to OpenStreetMap Carto:

* [INSTALL](https://github.com/gravitystorm/openstreetmap-carto/blob/master/INSTALL.md)

* [CONTRIBUTE](https://github.com/gravitystorm/openstreetmap-carto/blob/master/CONTRIBUTING.md)

This document assumes UNIX syntax. With Windows, use \ for folders instead of /.

## Introduction

We at OpenStreetMap Carto are happy about every piece of code that you contribute and we collected for you in this document relevant information that we think you should know before working on this repository. This is from one side to save us integration work, but from the other to save you frustration, in case the publishing workflow does not work as expected or if something is implemented in parallel.

A good habit to get into is using topic branches for your work, while keeping the master branch untouched. You can then keep the master branch up-to-date with the main repository without worrying about merge conflicts.

### Reduce Merge Conflicts

By not working on the master branch, you ensure that the branch's history will not diverge from the main repository's master branch. This allows you to pull in updates from the main repository (gravitystorm/openstreetmap-carto) without merge conflicts.

### Organize and Isolate Contributes

By creating a topic branch for each contribution, you effectively isolate your changes into a single branch of history. As long as the topic branch is up-to-date, your changes will merge cleanly into the main repository. If your contributions cannot be merged cleanly, the repository maintainer may have to reject your contribution until you update it.

### Easier for the Maintainer

Maintainers like topic branches. It is easier to review the pull request and merge the commit into the main repository

### Other recommendations

- [GitHub Desktop](https://desktop.github.com/) might be used by Windows or Mac users.
It is recommended to always use `git` commands directly (selecting *Open in Git Shell*). This way GitHub Desktop is exploited just as a monitor and not to issue commands (GitHub Desktop provides a too basic interface and does not clarify which git commands wraps; also, it uses merge vs. rebase).
- First search for already discussed GitHub issues within OpenStreetMap Carto (open or closed) which might be similar to your idea.
- When considering to approach a first contribution, it would be useful to start addressing an already open issue: it helps you to get involved and reducing the number of open issues is appreciated by the community.
- If a new idea requires coding and you are new to this repo, a good practice would be to create an issue first, possibly introducing yourself to the community and discussing about your proposal; doing this before beginning to develop could allow you to take advantage of suggestions from commenters and save coding time.

## Git Workflow 

### Git distributed version control system

Check that [git](https://git-scm.com/documentation) is installed.

    $ git --version

Otherwise (with Ubuntu):

    $ sudo apt-get update
    $ sudo apt-get install build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip
    $ sudo apt-get install git

Windows or Mac users might install [GitHub Desktop](https://desktop.github.com/), which includes *git*.

If you are using GitHub Desktop, to issue git commands press the right key of the mouse on your project in the left panel, select
*Open in Git Shell*.

### Fork OpenStreetMap Carto repo

Access the original repository https://github.com/gravitystorm/openstreetmap-carto after logging on to GitHub with your account.
In the top-right corner of the page, click Fork.

Check this for additional help https://help.github.com/articles/fork-a-repo/

### Create a local clone of your fork

On GitHub, navigate to your fork of the openstreetmap-carto repository (*https://github.com/YOUR-USERNAME/openstreetmap-carto*, with your GitHub username instead of YOUR-USERNAME).

Under your repository name (NOT gravitystorm), click *Clone or download*.

If you have GitHub Desktop installed, you can press *Open in Desktop*

Otherwise, in the *Clone with HTTPs* section, click to copy the clone URL for the repository. Then open Git Bash and change directory to an appropriate folder (e.g., change to your home directory).  Type `git clone`, and then paste the URL you copied before. It will look like this, with your GitHub username instead of YOUR-USERNAME:

    $ git clone https://github.com/YOUR-USERNAME/openstreetmap-carto.git

Press Enter. Your local clone will be created.

Now, you have a local copy of your fork of the OpenStreetMap Carto repository in the openstreetmap-carto sub-directory.

### Configure Git to sync your fork with the original repo

You need to verify that Git is configured to sync your fork with the original OpenStreetMap Carto repository.

Change directory to your local copy of the OpenStreetMap Carto repository

    $ cd openstreetmap-carto

Remotes are like a nickname for the URL of a repository.

Get a list of existing remotes including URLs after the name:

    $ git remote -v

If you correctly cloned the repo and are in its directory, you should have at least your origin repo:

```
$ git remote -v
origin  https://github.com/YOUR-USERNAME/openstreetmap-carto.git (fetch)
origin  https://github.com/YOUR-USERNAME/openstreetmap-carto.git (push)
```

If you do not have reference to the original *gravitystorm* repository, type the following command to configure it:

    $ git remote add gravitystorm https://github.com/gravitystorm/openstreetmap-carto.git

Then `git remote` should provide a complete configuration:

```
$ git remote -v
gravitystorm    https://github.com/gravitystorm/openstreetmap-carto.git (fetch)
gravitystorm    https://github.com/gravitystorm/openstreetmap-carto.git (push)
origin  https://github.com/YOUR-USERNAME/openstreetmap-carto.git (fetch)
origin  https://github.com/YOUR-USERNAME/openstreetmap-carto.git (push)
```

To list all your branches that you have already defined in your remote:

    $ git branch -a

### Update the master branch

If maintainers update the gravitystorm repo, their changes are not automatically reported in your fork and you need to manually issue the appropriate commands to set your *master* even with *gravitystorm:master*.

Before developing on a branch, committing changes or pushing your code, you always need to check that your *master* is "even" with *origin/master*: this is performed by checking out your *master* branch and updating it with *gravitystorm/openstreetmap-carto* latest changes.

With the browser, access your remote GitHub repository and verify that you are even with gravitystorm:master.

If you are using GitHub Desktop, right key on your project on the left panel, *View on GitHub* (your browser is opened to GitHub).

Verify the presence of the note "This branch is even with gravitystorm:master." and that there is no mention like this one: "This branch is [n] commits behind gravitystorm:master." In case, select *Open in Git Shell*, get the shell prompt and perform the following commands.

    $ git checkout master
    $ git pull gravitystorm master
    $ git push origin master

The above commands can be safely performed even if you are already even with gravitystorm:master (and are suggested).

Note 1: if you followed the suggestion to apply changes on branches, leaving your *master* untouched, the synching operation shall always work without producing errors; nevertheless, if there are (unwanted) local changes, `git pull gravitystorm master` fails; to discard local changes:

    $ git reset --hard
    $ git pull gravitystorm master

Note 2: `git push origin master` might ask your GitHub user and password.

Note 3: Reset local master to a specific commit of the origin:

    $ git checkout master
    $ git reset --hard [commit ID]
    $ git push --force origin master

Note 4: Display differences from local and origin master (it won't print any diff if there are no differences):

    $ git diff master..origin/master

### Create a topic branch

The general workflow to perform a contribution through a branch is the following:
- On your GitHub repository (as a result of the previous fork), create a new branch
- Clone branch to your local PC (e.g., with GitHub Desktop if you are using it); save it in the default directory proposed by GitHub
- The development of your contribution shall be performed in a separate development folder (not directly in your GitHub local repository, named *staging area*).
- When the development is finished and it is fully tested, it can be published.

Now, create a topic branch named "*revised-feature*" from master, for a new revision of a feature you wish to propose.

You can name the topic branch anything, but it makes sense to use appropriate naming, possibly through a small number of characters (so that you can easily check it online via GitHub). Notice that the name of your branch will be visible to revisors and approvers, so it would be useful to take some time to consider an appropriate naming.

    $ git checkout master
    $ git checkout -b revised-feature
    $ git branch
        master
      * revised-feature

This topic branch *revised-feature* is now isolated and branched off the history of your `master` branch.

### Summary of main commands managing branches

- List local branches (current branch highlighted with an asterisk):

  ```
  $ git branch
  ```

- List local and remote branches:

  ```
  $ git branch -a
  ```

- Switch to a specific branch (e.g., named revised-feature):

  ```
  $ git checkout revised-feature
  ```

  The above command is important and needs to be issued before working on a branch.

- Create a new branch (e.g., named revised-feature) and checkout it:

  ```
  $ git checkout -b revised-feature
  ```

- Discard unstaged changes of a branch

  You can discard changes which are not yet committed by doing a reset (`git reset --hard`) or with the following:
  
  ```
  $ git clean -dfx
  $ git checkout .
  ```

### Updating a branch

If maintainers updated the gravitystorm repo, you first need to update your *master* to be even with *gravitystorm:master*; then, you also need to update your branch with appropriate commands; consider meanwhile to combine (squash) your multiple commits into a single one, for future easier revision by maintainers and commenters.

Update your branch with the last commits of *gravitystorm:master*, also combining multiple commits (squashing them into one):

```
$ git rebase -i origin/master
```

In general, you update a branch to either help revisors by synching your branch to be one commit ahead of gravitystorm:master (e.g., after *gravitystorm:master* received some merge), or to perform some updates.

`git rebase -i origin/master` might produce conflicts which need manual fixing (see below). If anyway the conflict is limited to project.mml, simply do:
    $ scripts/yaml2mml.py
    $ git add project.mml
    $ git rebase --continue

After issuing `git rebase -i origin/master`, if you have to perform updates, you can do them: implement coding in your separate development directory, then stage the updates to your git local folder; subsequently, you need to perform a commit (related to your updates), a new rebase (to squash your updates and the prevous commit into a single one) and a push (to publish the update to your remote (and to the gravitystorm repo in case of existing PR). If no additional change is needed, you can directly issue a push (in case of active PR, revisors will see the changes after the push operation).

Push only after your updates are ready. When pushing, because of rebasing you need the *--force* flag:

```
$ git push --force
```

When rebasing, an editor will open and all the commits on your branch will be listed. If you only have one *pick* line, you simply need to mention that you rebased to the last gravitystorm:master commit and leave all other subsequent comments; then save and close the editor. If you have multiple commits, it should look something like:

    pick 704c166 adding new file
    pick df1ece0 adding another file
    pick 226433d making a change
    pick d04306a making another change
    pick b0c7604 final commit for new feature

Squash all but one commit (unless you want several to be merged into master) and save; to do this, with the editor modify all subsequent *pick* words to *squash* and then save and close the editor:

    pick 704c166 adding new file
    squash df1ece0 adding another file
    squash 226433d making a change
    squash d04306a making another change
    squash b0c7604 final commit for new feature

The editor will open again and you will then be prompted to enter a new commit message; be precise with this message, merging all the commit messages and consistently documenting the whole list of updates, because this message will substitute all previous ones and will be visible to maintainers and commenters (and checked by them to understand what you did). Also mention that you rebased to the last gravitystorm:master commit. It is good practice to begin with the last comments. E.g.,

    **Title**

    Short description
    
    Latest changes:
    ...(detailed list)

    Previous changes:
    ...(detailed list)

*git rebase* will stop when "pick" has been replaced with "edit" or when a command fails due to merge errors, to to give you an opportunity to fix the problem. When you are done editing and/or resolving conflicts, you can continue with `git rebase --continue`. Conversely, if you need to reset a stopped rebase operation, use the command `git rebase --abort`.

In case of conflicts, issue `git status` to get a list of files that need manual editing. Open the reported files in your text editor. Git automatically adds conflict markers to the affected areas. A conflict-marked area begins with <<<<<<< and ends with >>>>>>>. These are also known as the conflict markers. The two conflicting blocks themselves are divided by a =======.

You need to make sure to resolve all conflicts such that the files make sense, and everyone is happy.

After resolving a conflict, issue `git add [your edited filename]` and then `git rebase --continue`.

Further documentation:

- https://git-scm.com/docs/git-rebase

- https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/

### Make File Changes

As mentioned, the development of your contribution shall be performed in a separate folder (so, not directly in your GitHub staging area).

    $ [ edit any file; e.g., some .mss files, maybe some .md files, maybe some symbols\<n<me>.svg file ]

If project.yaml is edited:

    $ scripts/yaml2mml.py

Check the following pages:
* [CONTRIBUTE](https://github.com/gravitystorm/openstreetmap-carto/blob/master/CONTRIBUTING.md)
* [CARTOGRAPHY](https://github.com/gravitystorm/openstreetmap-carto/blob/master/CARTOGRAPHY.md)

Check also [SCRIPTS DOCUMENTATION](https://github.com/gravitystorm/openstreetmap-carto/blob/master/scripts/README.md) to learn about other scripts provided to support making changes to the map style.

Copy all files changed/added with your development to your local git folder (staging area).

Notice that changed files are automatically managed by GitHub, but new ones are not automatically staged and 'git add' is needed:

    $ git add <new files>

*git add* will stage the file changes. You can then commit the staged file(s) with *git commit*.

### Check the status of your modifications

    $ git status
      modified: [A_FILENAME]

git status shows that you have modified one file.

### Commit the File Changes

A good practice is to perform a dry-run before issuing the actual commit:

    $ git commit -a --dry-run

No command is executed when the *--dry-run* option is used. Nevertheless, the produced output is useful to check that everything is ready to be committed. You can also add the *-v* option to show the differences.

Commit command:

    $ git commit -a

An editor will open, requesting to enter the commit message which will become public and is important for revisors, so please take care to add:
- a summary of the commit in the first line (possibly less than 80 characters); avoid repeating already used wording; mention a previous issue when needed
- a blank line
- a very detailed description in multiline format (e.g., "List of changes", followed by a bullet list)

Save the text and exit the editor.

After the commit, if you are using GitHub Desktop, you can check that the changes are valid.

### Commit More File Changes

You can go on producing additional commits in subsequent periods:

    $ [ edit some file ]
    $ git commit -am "[#11] Improved feature"

### Prepare to Send Pull Request

Before sending the pull request, you should ensure that your changes merge cleanly with the main repository gravitystorm/openstreetmap-carto.

You can do this by pulling the latest changes from the main repository and rebasing the history of the master branch onto the topic branch *revised-feature*. Essentially, this will fast-forward your topic branch to the latest commit of the master.

    $ git checkout master
    $ git pull gravitystorm master
    $ git checkout revised-feature
    $ git rebase master
    $ git status

Alternatively, you can use `git merge master` instead of `git rebase master`, but your topic branches history may not be as clean.

Update your branch with the last commits of *gravitystorm:master*, also combining multiple commits (squashing them into one):

```
$ git rebase -i origin/master
```

See previously detailed explanations.

### Share your Changes on GitHub

Verify that the prompt refers to the correct branch:

    $ git checkout revised-feature

Push your topic:

    $ git push

Or:

    $ git push origin revised-feature

In case of "fatal: The current branch scripts-readme has no upstream branch.", use the following:

    $ git push --set-upstream origin revised-feature

You might get an error in case of rebase. Issue then:

    $ git push --force

By pushing your topic branch onto your GitHub fork, a gravitystorm/openstreetmap-carto maintainer can review and merge the topic branch into the main repository.

## Sending a Pull Request from GitHub

Open a web browser to your GitHub account's fork of the openstreetmap-carto repository.

If you are using GitHub Desktop, right key on your project on the left panel, "View on GitHub" (your browser is opened to GitHub). Verify that you are in YOUR GitHub Web repository and that you are logged.

You should see: "Your recently pushed branches: revised-feature" and "Compare & pull request button". Press it.

Alternatively, select your topic branch so that the pull request references the topic branch. Click the Pull Request button.

### Document your Pull Request

From the step before, you should already have a web browser opened to the gravitystorm GitHub repo, with "Open a pull request".

Alternatively, open a web browser to the gravitystorm GitHub repo and access pulls: https://github.com/gravitystorm/openstreetmap-carto/pulls

Then select yours.

Be very precise with title and description. If the title is not appropriate, modify it.

In the description text, repeat the title in bold (**title**), then leave a blank line, than introduce the aim of the PR and document it in detail, exploiting Markdown.

If the PR resolves an issue (e.g., issue 1234), mention:
```
Resolves #1234
```
Check also https://help.github.com/articles/closing-issues-via-commit-messages/

Verify that "Allow edits from maintainers" is checked.

Press "Create pull request".

### While Waiting, Continuing Crafting Commits

Since you worked on the topic branch instead of the master branch, you can continue working while waiting for the pull request to go through.

You can select another branch and go on working on it:

    $ git checkout master
    $ git pull gravitystorm master
    $ git checkout another_branch

You can create a new topic branch (be sure to create it from master):

    $ git checkout master
    $ git pull gravitystorm master
    $ git checkout -b new_feature
    $ git branch -a
      * new_feature
        master
        revised-feature

## When your Pull Request is Accepted

    $ git checkout master
    $ git pull gravitystorm master
    $ git log 

You can now delete your topic branch, because it is now merged into the main repository and in master branch.

    $ git branch -d revised-feature
    $ git push origin :revised-feature

I know, deleting a remote topic branch is ugly (git push origin :revised-feature).

## If your Pull Request is Rejected

In this case, you just need to update your branch from the main repository and then address the rejection reason.

    $ git checkout master
    $ git pull gravitystorm master
    $ git checkout revised-feature
    $ git rebase master
    ( edit / commit / edit / commit / rebase)
    $ git push origin revised-feature

Edit the pull request message from your GitHub account, after accessing your PR.

## Recommendations
- Clone your GitHub repository, not gravitystorm/openstreetmap-carto
- Do not use your local GitHub repository for development; just copy there the modified files
- Do not modify the original repository you want to contribute, but fork it
- Do not modify the master branch of your fork, but create a new branch and do there your modifications and commits
- Do not push a contribution to your master, but to the origin repository you are contributing for
- Do no press keys mentioning "Close" by mistake, unless you really want to freeze an open discussion
- Avoid too many commits: you might squash them by doing a `git rebase -i origin/master` to your branch (and subsequently `git push --force`).
- You also have the built-in git GUI: gitk
