# git-hooks

To enable the hooks, copy the scripts into your `{git-project-folder}/.git/hooks` and make it executable (`sudo chmod +x {hook_script}`.

## General
### prepare-commit-msg (Ruby script)
Change the commit message to add the prefix of the branch. Useful when working with JIRA (ticket number)

_Example_:

Branch name : _**ABCD\_1234**\_\_something_

_**ABCD-1234**_ will be added to the commit message if it not already.

## Ruby
### pre-commit (Bash script)
Run _rubocop_ and auto correct Ruby files, add those corrections to commit.

### pre-push (Bash script)
Run RSsec on _*spec.rb_ file that differ of the remote branche.
