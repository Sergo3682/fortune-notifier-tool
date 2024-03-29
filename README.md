fortune-notifier-tool - is a utility for displaying a random message from the fortune program as a notification after the user logs in.
=

![](doc/example.png "example")

Installation
-
- Make sure that the [`fortune`](https://en.wikipedia.org/wiki/Fortune_(Unix)) package is installed on your PC
- For custom command output, modify the variable `msg` in the file `fortune-notifier-tool.sh` according to the [`man fortune`](https://linux.die.net/man/6/fortune)
> Example: 
>```bash
>msg=$($(which fortune) ascii-art)
>```

 ```bash 
  chmod 744 install.sh
  ./install.sh
  ```
> After installation, you can delete all the files you downloaded from this repository
    
Uninstallation
-
- If the default installation path was changed, make sure that the `uninstall.sh` file has the same path as the `install.sh` file
``` bash
  chmod 744 uninstall.sh
  ./uninstall.sh
  ```

