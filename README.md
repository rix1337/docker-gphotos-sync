# docker-gphotos-sync

Google Photos Sync downloads your Google Photos to the local file system.
It will backup all the photos the user uploaded to Google Photos, but also
the album information and additional Google Photos ‘Creations’ (animations, panoramas, movies, effects and collages).

# Start

```
docker run -d \
  --name="GooglePhotosSync" \
  -v /path/to/config/:/config:rw \
  -v /path/to/storage/:/storage:rw \
  rix1337/docker-gphotos-sync
  ```
  
# Authenticating your Google Account

1. Place your `client_secret.json` at /config

   How to get it is best described at [Logix's Article at Linux Uprising](https://www.linuxuprising.com/2019/06/how-to-backup-google-photos-to-your.html)
   
   **Beware:** Use a "Desktop App" auth token, as opposed to a "Webapp", as there is no more "Other" option 

2. Afterwards you need to sign into the application once which cannot be done headlessly (using the "Syncing" command)
3. Afterwards you can call the "Syncing" command any time you wish, as long as the container is running (e.g. by using cron).

# Syncing

`docker exec -it GooglePhotosSync gphotos-sync /storage`

By itself this container will do nothing. A sync will only occur when you call the above command on a running container.
