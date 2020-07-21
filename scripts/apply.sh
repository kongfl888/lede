
pdir=/tmp/patches-r2s

git clone -b test --single-branch --depth 1 https://github.com/kongfl888/friendlywrt.git $pdir

for file in $pdir/r2s-patches-new/*; do
    git am --whitespace=fix $file || git am --abort
done
