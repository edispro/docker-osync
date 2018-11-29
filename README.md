# docker-osync
### The docker-osync is based on the osync tool, you can use it to  synchronize files between two servers 
Before runing the osync container you need to generate the ssh key (rsa for example) for each server.

### WIKI
https://wiki.samba.org/index.php/Bidirectional_Rsync/osync_based_SysVol_replication_workaround
### Syntax:
      $ sudo docker run -d -v /root/.ssh:/root/.ssh -v /files-dir/:/data/ edispro/docker-osync

      
