# Run

Sources and Javadoc

```
mvn dependency:sources && mvn dependency:resolve -Dclassifier=javadoc
```


Dependency Tree

```
mvn dependency:tree -Dverbose
```


Debug on terminal

```
mvn test -Dmaven.surefire.debug
```
