This is to just to build a simple python docker image by using volumes. So that it can used for my kubernetes handson

To build an image run following <br>
```docker build --tag sri-dock-vol .```

After building an image, run docker run to check the container

```docker run -d -v $(pwd)/data/:/home/usr/pythonsample/data/ -v $(pwd)/scripts/:/home/usr/pythonsample/scripts/ sri-dock-vol```