mturkMatlab: MATLAB Mechanical Turk Toolbox
-------------------------------------------

Toolbox for MATLAB to communicate with Amazon's Mechanical Turk (MTurk) using the SOAP interface. The goal of this toolbox is to act as an alternative to the MTurk Command Line Tools allowing you to manage HITs and retrieve results, all while enjoying the comforts of MATLAB. 

The toolbox is designed to be simple and easy to use and is largely modeled around providing the same functionality as Amazon's <a href="http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/Welcome.html">MTurk API</a>. The function names and arguments are intentionally kept identical to the <a href="http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_OperationsArticle.html">Operations</a> from the MTurk API to provide a familiar interface for people currently using other toolboxes.

The toolbox works with MATLAB and has not been tested on Octave (please let me know if you find out either way!).

Installation
------------

All functions are written in MATLAB and no compilation is required. To download:

    $ git clone https://github.com/adikhosla/mturkMatlab.git

Basic usage
-----------

The basic usage is relatively simple:

    $ cd mturkMatlab
    $ matlab
    >> addpath(genpath('.'));
    >> aws_access_key = 'XXXXXXXXXX';           % access key from AWS
    >> aws_secret_key = 'YYYYYYYYYY';           % secret key from AWS
    >> sandbox = true;                          % run functions on sandbox
    >> turk = InitializeTurk(aws_access_key, aws_secret_key, sandbox);
    >> [result, found_error] = GetAccountBalance(turk, GetAccountBalanceStruct());
 

Demo
----

There are a few demo scripts provided in the <a href="demo">demo</a> folder to help you get started. There are sample scripts for checking your balance, creating external HITs and approving and deleting all HITs.

Reference
---------
The provided code was used for MTurk experiments in the following paper:
 - Aditya Khosla, Wilma A. Bainbridge, Antonio Torralba, Aude Oliva. 
 <br><a href="http://people.csail.mit.edu/khosla">Modifying the Memorability of Face Photographs</a>, ICCV 2013

Please cite it if you use this code.


Questions and Comments
----------------------

If you have any feedback, please email <a href="http://people.csail.mit.edu/khosla">Aditya Khosla</a> at <a href="mailto:khosla@csail.mit.edu">khosla@csail.mit.edu</a>.

Also, pull requests of fixes/improvements are most welcome.


Disclaimer
----------

This toolbox is released under the MIT license. For additional details see <a href="LICENSE">LICENSE</a> file.



