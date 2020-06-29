#!/bin/bash
rm -rf /thumbor.conf
thumbor-config > /thumbor.conf
echo -e "\nSECURITY_KEY='$THUMBOR_SECURITY_KEY'" >> /thumbor.conf
echo -e "\nALLOW_UNSAFE_URL=False" >> /thumbor.conf
echo -e "\nOPTIMIZERS = ['thumbor.optimizers.jpegtran']" >> /thumbor.conf
cat /thumbor.conf
thumbor -c /thumbor.conf -p 8888
