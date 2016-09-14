# git-subtree

Git-subtree help you working with subtree commands. 

Using a subtrees config file, you can clone a project and create all subtree remotes with one command. It also helps working with push/pull commands, adding prefix and branch from config.

## Requeriments

- [NodeJS](https://nodejs.org)
- [Git subtree](https://github.com/git/git/blob/master/contrib/subtree/git-subtree.txt)

## Install

```bash
$ npm install -g git-subtree
```

## Configuration file

The git-subtree configuration must be stored in subtrees.json file in the project root.

```json
{ 
	"mysubtree" : {
		"localFolder": "subtrees/mysubtree",
		"repository": "https://github.com/username/myrepo.git",
		"branch": "master"
	}
}
```

## Use

```bash
$ gitsbt <command>
```

### Init

```bash
$ gitsbt init [username]
```

This command creates all remotes from subtrees config and if it's a new project, where subtrees folders are still not created, will fetch from subtree remote and add the subtree.

### Add

```bash
$ gitsbt add <subtree> [username]
```

Adds git remote, fetch it and creates the local folder with subtree content.

### Pull

```bash
$ gitsbt pull <subtree>
```

Pulls subtree changes from subtree remote. 

### Push

```bash
$ gitsbt push <subtree>
```

Pushes subtree changes. 

### Commit

```bash
$ gitsbt commit <subtree> <message>
```

Commits subtree pending changes. 
