smb-printer-load-test
=====================

Load test an SMB printer.

## Windows

At current the windows script will require you to run this across multiple machines.  Windows doesn't allow you to setup more than one SMB printer.  There are two options for this as well.  One using Ruby and another using vbscript.  The vbscript version allows you to run it in Windows without having to install anything extra.  You'll still need to setup a printer and set the default correctly and manually.  This script is being driven from Jmeter.

## Mac

On a Mac you can setup multiple SMB printers with the same endpoint, but different names.  You can achieve a level of concurrency this way.  After you setup the printers however, you need to attempt to print to each manually first in order to handle any one time authentication requests.

You'll also need to install launch, which can be done with brew:

```
brew install launch
```
