## GoogleDeploymentManager Queries List
This page contains all queries from GoogleDeploymentManager.

|            Query             |Severity|Category|Description|Help|
|------------------------------|--------|--------|-----------|----|
|Private Cluster Disabled<br/><sup><sub>48c61fbd-09c9-46cc-a521-012e0c325412</sub></sup>|<span style="color:#C00">High</span>|Insecure Configurations|Kubernetes Clusters must be created with Private Clusters enabled, meaning the 'privateClusterConfig' must be defined and the attributes 'enablePrivateEndpoint' and 'enablePrivateNodes' must be true.|<a href="https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.zones.clusters">Documentation</a><br/>|
|Not Proper Email Account In Use<br/><sup><sub>a21b8df3-c840-4b3d-a41a-10fb2afda171</sub></sup>|<span style="color:#C00">High</span>|Insecure Configurations|Gmail accounts are being used instead of corporate credentials|<a href="https://cloud.google.com/deployment-manager/docs/configuration/set-access-control-resources">Documentation</a><br/>|
|Cloud Storage Bucket Versioning Disabled<br/><sup><sub>ad0875c1-0b39-4890-9149-173158ba3bba</sub></sup>|<span style="color:#C00">High</span>|Observability|Cloud Storage Bucket should be enabled|<a href="https://cloud.google.com/storage/docs/json_api/v1/buckets">Documentation</a><br/>|
|Disk Encryption Disabled<br/><sup><sub>fc040fb6-4c23-4c0d-b12a-39edac35debb</sub></sup>|<span style="color:#C60">Medium</span>|Encryption|VM disks for critical VMs must be encrypted with Customer Supplied Encryption Keys (CSEK) or with Customer-managed encryption keys (CMEK), which means the attribute 'diskEncryptionKey' must be defined and its sub attributes 'rawKey' or 'kmsKeyName' must also be defined|<a href="https://cloud.google.com/compute/docs/reference/rest/v1/instances">Documentation</a><br/>|
|IP Forwarding Enabled<br/><sup><sub>7c98538a-81c6-444b-bf04-e60bc3ceeec0</sub></sup>|<span style="color:#C60">Medium</span>|Networking and Firewall|Instances must not have IP forwarding enabled, which means the attribute 'canIpForward' must not be true|<a href="https://cloud.google.com/compute/docs/reference/rest/v1/instances">Documentation</a><br/>|