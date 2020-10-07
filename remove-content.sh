#!/bin/bash
rm -rf collection/repository/deployment/server/jaggeryapps
rm -rf collection/repository/deployment/server/webapps/api
rm -rf collection/repository/deployment/server/webapps/user-portal
rm collection/repository/deployment/server/webapps/x509certificateauthenticationendpoint.war
rm collection/repository/deployment/server/webapps/api#am#publisher.war
rm collection/repository/deployment/server/webapps/api#am#store.war
rm collection/repository/deployment/server/webapps/api#am#store#v0.16.war
rm collection/repository/deployment/server/webapps/api#am#admin#v0.16.war
rm -rf collection/repository/resources

#remove plugins
#rm collection/repository/components/plugins/javax.cache.wso2_4.6.0.jar #############
rm collection/repository/components/plugins/org.wso2.carbon.apimgt*
rm collection/repository/components/dropins/org.wso2.carbon.identity.oauth2.clientauth.privilegeduser-2.3.3.jar
rm collection/repository/components/dropins/org.wso2.carbon.identity.application.authenticator.basicauth-6.3.0.jar
rm collection/repository/components/dropins/org.wso2.carbon.identity.custom.header.filter-1.4.0.jar
rm collection/repository/components/plugins/org.wso2.carbon.identity.scim2.common_1.5.1.jar

#rm collection/repository/components/plugins/org.wso2.carbon.identity.recovery_1.4.1.jar
#MAIL : "Skip accountrecoveryendpoint and authenticationendpoint files update in partial WUM updates"
#rm -rf collection/repository/deployment/server/webapps/accountrecoveryendpoint
#rm collection/repository/deployment/server/webapps/accountrecoveryendpoint/password-recovery.jsp
#rm collection/repository/deployment/server/webapps/accountrecoveryendpoint/self-registration-username-request.jsp
#rm -rf collection/repository/deployment/server/webapps/authenticationendpoint

#cp -rf unzip/WSO2-CARBON-UPDATE-4.6.0-0009/carbon.home/ collection/
#cp -rf unzip/WSO2-CARBON-UPDATE-4.6.0-0013/carbon.home/ collection/
#cp -rf unzip/WSO2-CARBON-UPDATE-4.6.0-0168/carbon.home/ collection/
#cp -rf unzip/WSO2-CARBON-UPDATE-4.6.0-0203/carbon.home/ collection/
cp -rf unzip/WSO2-CARBON-UPDATE-4.6.0-0073/carbon.home/ collection/

cp unzip/WSO2-CARBON-UPDATE-4.6.0-0220/carbon.home/repository/components/plugins/org.wso2.carbon.identity.auth.service_1.4.0.jar collection/repository/components/plugins/
cp unzip/WSO2-CARBON-UPDATE-4.6.0-0220/carbon.home/repository/components/plugins/org.wso2.carbon.identity.auth.valve_1.4.0.jar collection/repository/components/plugins/
