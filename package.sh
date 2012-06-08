#!/bin/sh -x
pushd ..
./reobfuscate.sh

rm -rf reobf/minecraft{,_server}/ic2

pushd reobf/minecraft
cp ../../port-berries++/client/*.png .
zip -r ../../port-berries++/Berries++-1.0-client-r1.zip .
popd

pushd reobf/minecraft_server
zip -r ../../port-berries++/Berries++-1.0-server-r1.zip .
popd

popd