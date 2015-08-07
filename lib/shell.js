/// <reference path='../typings/node/node.d.ts'/>

var os = require('os');
var _ = require('lodash');
var colors = require('colors');
var spawn = require('child_process').spawn;

/**
 * Helper to use the Command Line Interface (CLI) easily with both Windows and Unix environments.
 * 
 */
module.exports = (function () {
    function Cli() {
    }
    /**
     * Execute a CLI command.
     * Manage Windows and Unix environment.
     *
     * @param command                   Command to execute. ('grunt')
     * @param args                      Args of the command. ('watch')
     * @param callback                  Callback.
     * @param callbackData              Callback for data received.
     * 
     * Result:
     * 
     * - output: stdout and stderr output array
     * - stdout: stdout array
     * - stderr: stderr array
     * 
     */
    Cli.execute = function (command, args, callback, callbackData) {
        args = args || [];
        
        if (os.platform() === 'win32') {
            Cli._windows(command, args, callback, callbackData);
        } else {
            Cli._unix(command, args, callback, callbackData);
        }
    };
    /**
     * Execute a command on Windows environment.
     *
     * @param command       Command to execute. ('grunt')
     * @param args          Args of the command. ('watch')
     * @param callback      Callback.
     * @private
     */
    Cli._windows = function (command, args, callback, callbackData) {
        Cli._execute(process.env.comspec, _.union(['/c', command], args), callback, callbackData);
    };
    /**
     * Execute a command on Unix environment.
     *
     * @param command       Command to execute. ('grunt')
     * @param args          Args of the command. ('watch')
     * @param callback      Callback.
     * @private
     */
    Cli._unix = function (command, args, callback, callbackData) {
        Cli._execute(command, args, callback, callbackData);
    };
    /**
     * Execute a command no matters what's the environment.
     *
     * @param command   Command to execute. ('grunt')
     * @param args      Args of the command. ('watch')
     * @param callback                  Callback.
     * @private
     */
    Cli._execute = function (command, args, callback, callbackData) {
        console.log((command + ' ' + args.join(' ')).green);
        
        var output = '';
        var stdout = '';
        var stderr = '';
        
        var childProcess = spawn(command, args);
        childProcess.on('error', function (err) {});
        childProcess.stdout.on('data', function (data) {
            var dataStr = data.toString();
            stdout += dataStr;
            output += dataStr;
            if (callbackData) {
                callbackData(dataStr);
            }
        });
        childProcess.stderr.on('data', function (data) {
            var dataStr = data.toString();
            stderr += dataStr;
            output += dataStr;
            if (callbackData) {
                callbackData(dataStr);
            }
        });
        childProcess.on('close', function (code) {
            if (code !== 0) {
                return callback(command + ' process exited with code ' + code);
            }
            return callback(null, { output: output, stdout: stdout, stderr: stderr });
        });
    };
    return Cli;
})();