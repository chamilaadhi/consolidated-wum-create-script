#!/bin/bash

#sh build/wso2am-3.2.0/bin/profileSetup.sh  -Dprofile=traffic-manager
#sh build/wso2am-3.2.0/bin/profileSetup.sh  -Dprofile=gateway-worker
sh build/wso2am-3.2.0/bin/profileSetup.sh  -Dprofile=api-publisher
cp deployment.toml build/wso2am-3.2.0/repository/conf/
#sh build/wso2am-3.2.0/bin/wso2server.sh  -Dprofile=traffic-manager
#sh build/wso2am-3.2.0/bin/wso2server.sh  -Dprofile=gateway-worker
sh build/wso2am-3.2.0/bin/wso2server.sh  -Dprofile=api-publisher


