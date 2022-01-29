# On enumerated file names

## Problem

Sometimes I want files to have an order, like images for example. I will preface the file name with a number e.g. `0-bug.png`, `1-fixed.png`.
But this breaks when you go over 9:
```
0-spheres.png                              18-brightness-illusion.png
1-bug.png                                  2-spheres-aa4.png
10-whitted.png                             3-bug.png
11-gpu-tris-bug.png                        4-float-addition-bug.png
12-gpu-pathtracing-skylight.png            5-float-addition-bug.png
13-absorption-dielectrics-path-gpu.png     6-float-addition-bug.png
14-diamond-teapot-gpu-path.png             7-float-addition-bug.png
15-1B-tris-10k-water-dragons.png           8-float-addition-bug.png
16-bright-sky-rough-copper.png             9-float-addition-bug.png
17-linear-aces-hable-tonemapping-test.png
```

## Solution

Now I try out switching from team numeric to team alpha:
```
a-spheres.png             h-float-addition-bug.png               o-diamond-teapot-gpu-path.png
b-bug.png                 i-float-addition-bug.png               p-1B-tris-10k-water-dragons.png
c-spheres-aa4.png         j-float-addition-bug.png               q-bright-sky-rough-copper.png
d-bug.png                 k-whitted.png                          r-linear-aces-hable-tonemapping-test.png
e-float-addition-bug.png  l-gpu-tris-bug.png                     s-brightness-illusion.png
f-float-addition-bug.png  m-gpu-pathtracing-skylight.png
g-float-addition-bug.png  n-absorption-dielectrics-path-gpu.png
```

It works, it sorts correctly.
But I already have problems doing it correctly because I don't know the successor of a letter in the alphabeth from the top of my head, because I'm a dumbass.
I will try upgrading my brain with the `git gud` strategy.

###### 29-01-2022
