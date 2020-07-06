Compile the project with 

`./gradlw build`

Use the following command to update the classes inside of shm161

    baksmali d build/patch-dex/classes.dex && cp -a out/* shm161_mymod_mod/smali

Afterwards open apktool and build, sign and install the updated version of SHM.

I created a keystore which you can use in apktool with the following options:

keystore file: samsung.keystore
keystore password: ab987c
key name: business
key password: kpi135



