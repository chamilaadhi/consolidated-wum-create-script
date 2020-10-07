#!/bin/bash
product=wso2am-3.2.0
packPath=320pack/$product.zip
rm -rf build
rm -rf $product
mkdir build

unzip $packPath
mv $product build
cp -rf collection/* build/$product

cd build
#removing packed libs
rm $product/lib/config-mapper-1.0.2.jar
rm $product/repository/deployment/server/webapps/accountrecoveryendpoint/WEB-INF/lib/org.wso2.carbon.identity.mgt.endpoint.util-5.16.73.jar
rm $product/repository/deployment/server/webapps/accountrecoveryendpoint/WEB-INF/lib/org.wso2.carbon.idp.mgt.stub-5.16.73.jar

# remove for the security fix in update0124
rm $product/repository/components/plugins/org.wso2.carbon.feature.mgt.services_4.6.0.jar
rm $product/repository/components/plugins/org.wso2.carbon.feature.mgt.stub_4.6.0.jar

echo "org.wso2.carbon.identity.configuration.mgt.core,5.17.5,../plugins/org.wso2.carbon.identity.configuration.mgt.core_5.17.5.jar,4,true" >> $product/repository/components/api-key-manager/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info
echo "org.wso2.carbon.identity.configuration.mgt.core,5.17.5,../plugins/org.wso2.carbon.identity.configuration.mgt.core_5.17.5.jar,4,true" >> $product/repository/components/api-publisher/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info
echo "org.wso2.carbon.identity.configuration.mgt.core,5.17.5,../plugins/org.wso2.carbon.identity.configuration.mgt.core_5.17.5.jar,4,true" >> $product/repository/components/gateway-worker/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info

#zip -r $product.zip $product