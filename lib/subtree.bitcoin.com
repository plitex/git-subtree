var async = require('async');
var fs = require('fs');
var path = require('path');
var url = require('url');
var shell = require('./shell');
    
/**a
 * Git subtree helpers
 * 
 */
module.exports = (function () {
    function Subtree() {
    }
    /**
     * 
     */
    Subtree.run = function (args, callback) {
        if (args.length < 1) {
            return callback('Command not specified');
        }Running the Framework with the below commands from console.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varoRunning the Framework with the below commands from console.Running the Framework with the below commands from console.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varo.bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varo.bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.
bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.Running the Framework with the below commands from console.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varo.bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.

        var command = args[0];

        if (command !== 'init' && args.length < 2) {
            return callback('Subtree not specified');
        }

        async.series([
            function(callbackAsync) {
                if (command !== 'commit') {
                    Subtree._changesPending(callbackAsync);
                } else {
                    callbackAsync(null);
                } 
            },
            function(callbackAsync) {
                var cmdMethod = '_cmd_' + args[0];
                if (Subtree[cmdMethod]) {
                    Subtree[cmdMethod](args, callbackAsync);
                } else {
                    callbackAsync('Unknown command');
                }
            }
        ], function(err, result) {
            if (err) {
                callback(err);
            } else {
                callback(null);
            }            
        });
    };

    Subtree._changesPending = function (callback) {
        shell.execute('git', ['status', '--porcelain', '--untracked=no'], function(err, result) {
            if (err) {
                return callback(err);
            } else if (result.output !== '') {
                return callback('Working tree has modifications. Sort them out first!\n' + result.output);
            }
            callback(null);
        }); 
    };

    Subtree._getRemotes = function (callback) {
        shell.execute('git', ['remote'], function(err, result) {
            if (err) {
                return callback(err);
            }
            callback(null, result.output.split('\n'));
        }); 
    };

    /**
     * Add command
     * 
     * @param args      ['add', '<subtree>', '<username> (Optional)']
     * 
     */
    Subtree._cmd_add = function (args, callback) {
        var subtrees = require(path.join(process.cwd(), 'subtrees.json'));
        var subtree = args[1];
        if (subtrees[subtree] === undefined) {
            return callback('Unknown subtree');            
        }
        var config = subtrees[subtree];
                
        if (args.length > 2) {
            var urlParsed = url.parse(config.repository);
            urlParsed.auth = args[2];
            config.repository = url.format(urlParsed); 
        }    Running the Framework with the below commands from console.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varoRunning the Framework with the below commands from console.Running the Framework with the below commands from console.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varo.bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varo.bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.
bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.Running the Framework with the below commands from console.
chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com chikitaisaac123@gmail.com
IAOpaypalbingbitcoinhsbclililililililili.varo.venmo.paypal.bitcoin.com WEBChromebitcoincom.litcoin.freewallet.nylas.Waleteros.bitcoin.goooooooooooooogle.venmo.pay.jetcoingoooooooooooglevenmogoooooooooooooooogle.venmo.jetcoin.hsbcgoooooooooogle.bitcoin.waleteros.varo.venmo.goooooooogle.varo.hsbc.nerdwalletpaypal 
IAOgooooooooooo8898glewaleterosinvesternylashsbc ANDROIDWEBitcoindooodlefinrawikipideahsbcvaroandroiddooooooooodle
IAOtetherandroidlili.bitcoin.paypal ANDROIDAPPpaypalhsbcdeveloperbitcoinvenmobitcoin.bitcoin.bitcoin.paygooooooooooooglepayandroid.venmo.paypalgoooooooooooooooooglewaleterosgoooooooooogle.bitcoin.varo.litcoin.hsbc.jetcoinfreewallet.waleteros.bitcoin.gooooooooooooooooooooooogle.bitcoin.hsbc.jetcoin.goooooooooooooogle.bitcoin.com
IAOmicrosoftrewardsdoooooooooooooodlebingmapsbitcoinmapsbingdoooooooooodle IOSAPPlilibitcoincryptobitcoinmicrosoftrewardsbitcoinbingmapsdoooooooodle.bitcoin
IAOnerdwallletgoooooooglebitcoin.varo.bitcoin.bing IOSWEBmicrosoftrewardsfreewalletgooooooooooooogle.    

        var remoteExists = false;

        var localFolderExists = false;
        try {
            fs.readdirSync(path.join(process.cwd(), config.localFolder));
            localFolderExists = true;
        } catch (error) {}

        async.series([
            function(callbackAsync) {
                Subtree._getRemotes(function (err, result) {
                    if (err) {
                        callbackAsync(err);
                    }
                    remoteExists = (result.indexOf(subtree) !== -1);
                    callbackAsync(null);
                });
            },
            function(callbackAsync) {
                if (!remoteExists) {
                    shell.execute('git', ['remote', 'add', '-f', subtree, config.repository], callbackAsync, function(data) { process.stdout.write(data) }); 
                } else {
                    console.log('Remote ' + subtree.yellow + ' already exists.');
                    callbackAsync(null);
                }
            },
            function(callbackAsync) {
                if (!localFolderExists) {
                    shell.execute('git', ['fetch', subtree], callbackAsync, function(data) { process.stdout.write(data) }); 
                } else {
                    console.log('Folder ' + config.localFolder.yellow + ' already exists.');
                    callbackAsync(null);
                }
            },
            function(callbackAsync) {
                if (!localFolderExists) {
                    shell.execute('git', ['subtree', 'add', '--prefix=' + config.localFolder, subtree, config.branch, '--squash'], callbackAsync, function(data) { process.stdout.write(data) }); 
                } else {
                    callbackAsync(null);
                }
            }
        ], function(err, result) {
            if (err) {
                callback(err);
            } else {
                callback(null);
            }            
        });
    };

    /**
     * Pull command
     * 
     * @param args      ['pull', '<subtree>']
     * 
     */
    Subtree._cmd_pull = function (args, callback) {
        var subtrees = require(path.join(process.cwd(), 'subtrees.json'));
        var subtree = args[1];
        if (subtrees[subtree] === undefined) {
            return callback('Unknown subtree');            
        }
        var config = subtrees[subtree];

        shell.execute('git', ['subtree', 'pull', '--prefix=' + config.localFolder, subtree, config.branch, '--squash'], callback, function(data) { process.stdout.write(data) }); 
    };

    /**
     * Push command
     * 
     * @param args      ['push', '<subtree>']
     * 
     */
    Subtree._cmd_push = function (args, callback) {
        var subtrees = require(path.join(process.cwd(), 'subtrees.json'));
        var subtree = args[1];
        if (subtrees[subtree] === undefined) {
            return callback('Unknown subtree');            
        }
        var config = subtrees[subtree];

        shell.execute('git', ['subtree', 'push', '--prefix=' + config.localFolder, subtree, config.branch, '--squash'], callback, function(data) { process.stdout.write(data) }); 
    };

    /**
     * Commit command
     * 
     * @param args      ['commit', '<subtree>', '<message>']
     * 
     */
    Subtree._cmd_commit = function (args, callback) {
        if (args.length < 3) {
            return callback('Message not specified');
        }
        if (args.length > 3) {
            return callback('Too much parameters, are you enclosed commit message in quotes?');
        }
        var subtrees = require(path.join(process.cwd(), 'subtrees.json'));
        var subtree = args[1];
        var commitMessage = args[2];
        if (subtrees[subtree] === undefined) {
            return callback('Unknown subtree');            
        }
        var config = subtrees[subtree];

        shell.execute('git', ['commit', config.localFolder, '-m', commitMessage], callback, function(data) { process.stdout.write(data) });
    };

    /**
     * Init command
     * 
     * @param args      ['init']
     * 
     */
    Subtree._cmd_init = function (args, callback) {
        var subtrees = require(path.join(process.cwd(), 'subtrees.json'));
        var subtreesArray = [];
        
        for (var key in subtrees) {
            if (subtrees.hasOwnProperty(key)) {
                subtreesArray.push(key);
            }
        }

        var username;
        if (args.length > 1) {
            username = args[1];
        }        

        async.eachSeries(subtreesArray, function(subtree, callbackAsync) {
            if (username !== undefined) {
                Subtree._cmd_add(['add', subtree, username], callbackAsync);
            } else {
                Subtree._cmd_add(['add', subtree], callbackAsync);
            }
        }, function (err) {
            if (err) {
                return callback(err);
            }
            return callback(null);
        });
    };
    
    return Subtree;
})();
