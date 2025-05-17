

# anduinos-iso-builder-remix-kde-plasma




## Home

| Link | GitHub |
| ---- | ------ |
| [AnduinOS / ISO Builder / Remix / Kde Plasma](https://samwhelp.github.io/anduinos-iso-builder-remix-kde-plasma/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma) |
| [AnduinOS / ISO Builder / Note](https://samwhelp.github.io/note-about-anduinos-iso-builder/) | [GitHub](https://github.com/samwhelp/note-about-anduinos-iso-builder) |




## Subject

* [Source](#source)
* [Module](#module)
* [Remix](#remix)
* [Howto](#howto)




## Source

| Source |
| --- |
| GitHub / [AnduinOS](https://github.com/Anduin2017/AnduinOS)




## Module

| Main Module | Purpose |
| ----------- | ------- |
| [14-my-extra-1010-package-mod](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/14-my-extra-1010-package-mod) | [install package](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/14-my-extra-1010-package-mod/asset/package/install) |
| [14-my-extra-1020-overlay-mod](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/14-my-extra-1020-overlay-mod) | [install file](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/14-my-extra-1020-overlay-mod/asset/overlay) |


| Infrastructure | Purpose |
| -------------- | ------- |
| [60-dconf-system-db-init-mod](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/60-dconf-system-db-init-mod) | [/etc/dconf](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/14-my-extra-1020-overlay-mod/asset/overlay/etc/dconf) |
| [61-gsettings-schema-compile-mod](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/61-gsettings-schema-compile-mod) | [/usr/share/glib-2.0/schemas](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/tree/main/asset/template/src/mods/14-my-extra-1020-overlay-mod/asset/overlay/usr/share/glib-2.0/schemas) |


* [Module / Ignored](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/blob/main/helper/docs/module/module-ignored.md)
* [Module / Adjusted](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma/blob/main/helper/docs/module/module-adjusted.md)




## Remix

| Link | GitHub |
| ---- | ------ |
| [AnduinOS / ISO Builder / Remix](https://samwhelp.github.io/anduinos-iso-builder-remix/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix) |
| [AnduinOS / ISO Builder / Remix / Xfce](https://samwhelp.github.io/anduinos-iso-builder-remix-xfce/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix-xfce) |
| [AnduinOS / ISO Builder / Remix / Kde Plasma](https://samwhelp.github.io/anduinos-iso-builder-remix-kde-plasma/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma) |
| [AnduinOS / ISO Builder / Remix / Lxqt](https://samwhelp.github.io/anduinos-iso-builder-remix-lxqt/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix-lxqt) |
| [AnduinOS / ISO Builder / Remix / Mate](https://samwhelp.github.io/anduinos-iso-builder-remix-mate/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix-mate) |
| [AnduinOS / ISO Builder / Remix / Cinnamon](https://samwhelp.github.io/anduinos-iso-builder-remix-cinnamon/) | [GitHub](https://github.com/samwhelp/anduinos-iso-builder-remix-cinnamon) |




## Howto

* [Combine](#combine)
* [Build All](#build-all)
* [Build Default](#build-default)




### Combine

> install git

``` sh
sudo apt-get install git
```


> clone [anduinos-iso-builder-remix-kde-plasma](https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma)

``` sh
git clone https://github.com/samwhelp/anduinos-iso-builder-remix-kde-plasma.git
```


> change dir to `anduinos-iso-builder-remix-kde-plasma`

``` sh
cd anduinos-iso-builder-remix-kde-plasma
```


> combine via git clone

``` sh
make combine-via-git
```




### Build All


> change dir to `~/work/anduinos-iso-builder-remix-kde-plasma/iso-profile`

``` sh
cd ~/work/anduinos-iso-builder-remix-kde-plasma/iso-profile
```


> bulid all

``` sh
make build-all
```


> or build fast

``` sh
make build-fast
```




### Build Default


> change dir to `~/work/anduinos-iso-builder-remix-kde-plasma/iso-profile/src`

``` sh
cd ~/work/anduinos-iso-builder-remix-kde-plasma/iso-profile/src
```


> bulid default

``` sh
make build
```


> bulid and log

``` sh
make log-build
```
