# Problems using a different captive portal to avoid connectivitycheck.gstatic.com tracking

## Problem

Everytime you connect your phone to a network you android device will ping `connectivitycheck.gstatic.com` to see if it has internet access, if not it will launch the captive portal.
In order not to ping the google service every time you connect one can venture to change the settings.

## Solution

Following mental outlaw's [tutorial](https://www.youtube.com/watch?v=E1U5qoiR1fM), i changed the captive portal url's:
```
adb devices
adb root
adb remount
adb shell "settings put global captive_portal_http_url http://204.ecloud.global"
adb shell "settings put global captive_portal_https_url https://e.foundation/net_204/"
```
This works.
After this the captive portal server seems to be null:
```
adb shell "settings get global captive_portal_server"
```
As I understand it this is what to ping to check connectivity?
Anyway, I changed it to my own website:
```
adb shell "settings put global captive_portal_server codyb.xyz"
```
Which seems to work too.
This minor change does not alter any of the symptoms following.

## Problems, continued

I connect to my home wifi, and the internet access works.
There are two problems, a very minor one and a bit more annoying one:
- It tells you `"name_of_wifi" has limited connectivity`. However, the internet works fine.
- (fixed, i was dumb, you need to confirm something on the popup (also forgot what(very clear post this(again to many nested items)))) It will disconnect often, so you will need to reconnect everytime you need to do something that requires internet connection.

###### 03-01-2022
