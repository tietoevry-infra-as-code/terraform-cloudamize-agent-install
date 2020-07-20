#!/bin/bash
export CLOUDAMIZE_CUSTOMER_KEY=CUSTOMER_KEY
curl -s -L https://agentmanager1.cloudamize.com/cxf/downloadFile/installCloudamizeAgentV2.sh | sudo -E bash
