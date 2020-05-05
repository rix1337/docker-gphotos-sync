# docker-gphotos-sync

Google Photos Sync downloads your Google Photos to the local file system.
It will backup all the photos the user uploaded to Google Photos, but also
the album information and additional Google Photos ‘Creations’ (animations, panoramas, movies, effects and collages).

Place your client_secret.json at /config

How to get it is best described at [Logix's Article at Linux Uprising](https://www.linuxuprising.com/2019/06/how-to-backup-google-photos-to-your.html)

This image will then download your photos to /storage

# Start

```
docker run -d \
  --name="GooglePhotosSync" \
  -v /path/to/config/:/config:rw \
  -v /path/to/storage/:/storage:rw \
  rix1337/docker-gphotos-sync
  ```

# Syncing

`docker exec -it GooglePhotosSync gphotos-sync /storage`
