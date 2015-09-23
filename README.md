mturkMatlab: MATLAB Mechanical Turk Toolbox
-------------------------------------------

Toolbox for MATLAB to communicate with Amazon's Mechanical Turk (MTurk) using the SOAP interface. The goal of this toolbox is to act as an alternative to the MTurk Command Line Tools allowing you to manage HITs and retrieve results, all while enjoying the comforts of MATLAB. 

The toolbox is designed to be simple and easy to use and is largely modeled around providing the same functionality as Amazon's <a href="http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/Welcome.html">MTurk API</a>. The function names and arguments are intentionally kept identical to the <a href="http://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI/ApiReference_OperationsArticle.html">Operations</a> from the MTurk API to provide a familiar interface for people currently using other toolboxes.

The toolbox works with MATLAB and has not been tested on Octave (please let me know if you find out either way!). <b>Note: </b> it seems that there are some inexplicable Java errors when using earlier versions of MATLAB (<=2012). Please upgrade your version of MATLAB if you encounter these.

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
    >> sandbox = true;                          % run API functions on sandbox
    >> turk = InitializeTurk(aws_access_key, aws_secret_key, sandbox);
    >> [result, found_error] = GetAccountBalance(turk, GetAccountBalanceStruct());
    >> disp(['Your balance is $' result.AvailableBalance.Amount]);

You can obtain your AWS access key and secret key from Amazon's console <a href="https://console.aws.amazon.com/iam/home?#security_credential" target="_new">here</a>.

The API functions in the toolbox such as CreateHIT or GetAccountBalance require 2 arguments:
 
 - <b>turk</b>: this is a structure containing basic information for all functions such as your access key and secret key, as well as whether the current commands are to be executed on Sandbox or not. The way to initialize this variable is shown above. Note that the structure contains other options that you can modify if you see fit.

 - <b>Function struct</b>: this is a structure that is specific to the function being called. If the API function to be called is Func(), then the structure associated with that function can be obtained by calling FuncStruct(). The value returned will contain a structure containing the set of arguments possible for that particular API function. You can modify these values before calling the API function. In many cases this structure will not require any modification, as in the example above. In the <a href="demo">demo</a> folder, there are various examples where this structure is modified before calling the API function.

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



