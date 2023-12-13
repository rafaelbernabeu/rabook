# SSH

%PROGRAMDATA%

AuthorizedKeysFile

The default is .ssh/authorized_keys. If the path isn't absolute, it's taken relative to user's home directory (or profile image path), for example, C:\Users\username. If the user belongs to the administrator group, %programdata%/ssh/administrators_authorized_keys is used instead.

https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_server_configuration