echo "> Initiating repo & manifest"
repo init -u https://github.com/Evolution-X/manifest -b snow

echo "
> Cloning treble manifest & removing unnecessary XML"
git clone https://github.com/phhusson/treble_manifest .repo/local_manifests -b android-12.0
rm -rf .repo/local_manifests/replace.xml

echo "
> Syncing manifest repositories
repo sync -c -j4 --force-sync --no-tags --no-clone-bundle"
