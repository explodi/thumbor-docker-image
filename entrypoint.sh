#!/bin/bash
rm -rf /thumbor.conf
thumbor-config > /thumbor.conf
echo -e "\nSECURITY_KEY='$SECURITY_KEY'" >> /thumbor.conf
echo -e "\nALLOW_UNSAFE_URL=False"  >> /thumbor.conf
thumbor -c /thumbor.conf -p 8999