#!/bin/bash
  
pack1=wso2am-3.2.0
pack2=wso2am-3.2.0-rc3
rm md5sum-default.txt
rm md5sum-wum.txt
rm diff-pack.txt
rm resource.zip
cd $pack1
echo "generating md5sum for "$pack1
find -type f -exec md5sum '{}' \; > md5sum-updated.txt
mv md5sum-default.txt ../
cd ../$pack2
echo "generating md5sum for "$pack2
find -type f -exec md5sum '{}' \; > md5sum-fresh.txt
mv md5sum-wum.txt ../
cd ../
echo "generating diff between "$pack1" and "$pack2
diff -qr $pack2/ $pack1/ > diff-pack.txt
zip -r resource.zip md5sum-fresh.txt md5sum-updated.txt diff-pack.txt