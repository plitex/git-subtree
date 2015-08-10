#!/usr/bin/env node

var path = require('path');
var fs = require('fs');
var colors = require('colors');
var shell = require('./lib/shell');
var subtree = require('./lib/subtree');

var args = process.argv.slice(2);

if (args.length > 0) {

    // Check if it's project root
    try {
        var gitroot = path.join(process.cwd(), ".git")
        fs.readdirSync(gitroot);
    } catch (error) {
        console.error('Run this script from the root of the repository.'.red);
        process.exit(1);
    }
    
    // Check if config file exists
    try {
        var subtrees = path.join(process.cwd(), "subtrees.json")
        fs.readFileSync(subtrees);
    } catch (error) {
        console.error('Missing subtrees.json configuration file'.red);
        process.exit(1);
    }

    subtree.run(args, function(err, result) {
        if (err) {
            console.error(('ERROR: ' + err).red);
            process.exit(1);
        }
    });
} else {
    console.log('usage: git-subtree <command>\n');
    console.log('Commands:');
    console.log('init\tInitialize project subtrees');
    console.log('add\tCreate remote, fetch and add subtree folder');
    console.log('pull\tPull changes from subtree');
    console.log('push\tPush changes to subtree');
    console.log('commit\tCommit subtree folder changes');
}
