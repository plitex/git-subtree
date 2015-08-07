#!/usr/bin/env node

var path = require('path');
var fs = require('fs');
var colors = require('colors');
var shell = require('./lib/shell');
var subtree = require('./lib/subtree');

var cwd = process.cwd();
var gitroot = path.join(cwd, ".git")

try {
    fs.readdirSync(gitroot);
} catch (error) {
    console.error('Run this script from the root of the repository.'.red);
    process.exit(1);
}

subtree.run(process.argv.slice(2), function(err, result) {
    if (err) {
        console.error(('ERROR: ' + err).red);
        process.exit(1);
    }
});
