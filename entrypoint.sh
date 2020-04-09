#!/bin/sh
echo -e "\nSECURITY_KEY='$SECURITY_KEY'" >> /thumbor.conf
echo -e "\nALLOW_UNSAFE_URL=False"  >> /thumbor.conf