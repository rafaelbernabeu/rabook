# Java

To install OpenJDK 11 on Red Hat Enterprise Linux:
Ensure that you have enabled the Optional channel, by running the following commands:

```
yum repolist all
yum-config-manager --enable rhel-7-server-optional-rpms
yum install java-11-openjdk-devel
```
