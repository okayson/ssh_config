# SSH_CONFIG

This is ssh configuration template.

# Install

Run `setup.sh`.  
`setup.sh` create symbolic links as follows.  
* ~/.ssh/config -> /this/dir/config
* ~/.ssh/config.d -> /this/dir/config.d

# Uninstall

Remove symbolic links which are created by `Install`.

# Edit Template

Edit `config` and `config.d/*` as you want to do!  
By template, `config` load all of files in `config.d`.

# Tips

## Brief Configuration Item

See detail in `man ssh_config`.

| Item |      |
| ---- | ---- |
|Host | Host name. ssh can access by this name with configuration. |
| HostName | Host name or ip address. |
| User | Login user name. |
| Port | Port number to connect on the remote host. |
| IdentityFile | Path of private key. |
| IdentitiesOnly | Yes or No |


## Logging

Logging typing on ssh.

```shell
# In ssh session
$ script
# To finish logging, Type `Ctrl-D`.
```

Adding timestamp to log file name.

```shell
$ script ./$(date +%Y%m%d_%H%M%S).log 
```

Logging timestamp in log file like `tera term`.

```shell
$ script -fq >(awk '{print strftime("%F %T ") $0}{fflush() }'>> log.txt)
```

Seeing log file which include ANSI color code.

```shell
$ less -R
```

Removing ANSI color code in log file.

```shell
$ cat typescript | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g" | col > log.txt
```

# c.f.
https://qiita.com/passol78/items/2ad123e39efeb1a5286b  
https://qiita.com/masa0x80/items/ecb692ad93f7d06a07b0  
https://qiita.com/tumf/items/73e495e1274bc25acf5f  
https://s10i.me/whitenote/post/42  

