# Dockerized pgadmin4

To be able to run the container you must create a folder **/data/pgadmin** and set the owner to **5050:5050**. This is the folder where the container will save the pgadmin configuration.

```
mkdir /srv/pgadmin4/data/pgadmin
chown 5050 /srv/pgadmin4/data/pgadmin
```