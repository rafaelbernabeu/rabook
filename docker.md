# Docker overview

docker-cli -> dockerd -> containerd -> runc -> unshare

A namespace wraps a global system resource in an abstraction that makes it appear to the processes within the namespace that they have their own isolated instance of the global resource.
Changes to the global resource are visible to other processes that are members of the namespace, but are invisible to other processes. One use of namespaces is to implement containers.

Control groups, usually referred to as cgroups, are a Linux kernel feature which allow processes to be organized into hierarchical groups whose usage of various types of resources can then be limited and monitored.

The unshare command creates new namespaces
A namespace that has been made persistent in this way can subsequently be entered with nsenter.

The following types of namespaces can be created with unshare:
- mount namespace
- UTS namespace
- IPC namespace
- network namespace
- PID namespace
- cgroup namespace
- user namespace
- time namespace

```
$ man 2 unshare
$ man 7 namespaces 
$ man 7 cgroups
$ man 1 nsenter
$ man 7 mount_namespaces
$ man 7 uts_namespaces
$ man 7 ipc_namespaces
$ man 7 network_namespaces
$ man 7 pid_namespaces
$ man 7 cgroup_namespaces
$ man 7 user_namespaces
$ man 7 time_namespaces
```