# git-subtree

Git subtree modules helper will help you working with subtree commands. It also allows to store in you repository the subtrees configuration to setup git subtree after a project clone.

## Install

npm install -g git-subtree

## Use

```bash
git-subtree <command>
```

### Init

```bash
git-subtree init [username]
```
 
Run git-subtree add for each subtree in the current project config.
If username is provided, it's added to all subtrees repo urls. 

### Add

```bash
git-subtree add <subtree> [username]
```

Adds git remote, fetches it and adds a subtree. 

### Pull

```bash
git-subtree pull <subtree>
```

Pulls subtree changes from subtree remote. 

### Push

```bash
git-subtree push <subtree>
```

Pushes subtree changes. 

### Commit

```bash
git-subtree commit <subtree> <message>
```

Commits subtree pending changes. 

## Subtrees config

The git-subtree configuration must be stored in subtrees.json file in the project root. In this file,  

```json
{ 
	"mysubtree" : {
		"localFolder": "subtrees/mysubtree",
		"repository": "https://github.com/username/myrepo.git",
		"branch": "master"
	}
}
```