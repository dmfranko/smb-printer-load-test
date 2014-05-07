smb-printer-load-test
=====================

Load test an SMB printer.

## Windows

At current the windows script will require you to run this across multiple machines.  Windows doesn't allow you to setup more than one SMB printer.

## Mac

On a Mac you can setup multiple SMB printers with the same endpoint, but different names.  You can achieve a level of concurrency this way.  After you setup the printers however, you need to attempt to print to each manually first in order to handle any one time authentication requests.



