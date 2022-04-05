# E3DC Telegraf Config Files
+ copy to `/etc/telegraf/telegraf.d`
    ```bash
    sudo cp *.star *.conf /etc/telegraf/telegraf.d/
    ```
+ replace the variables or create a var file in `/etc/defaults/telegraf`
+ restart telegraf
    ```bash
    sudo systemctl restart telegraf
    ```