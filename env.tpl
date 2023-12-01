# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< CARTO CONFIG <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# This section is automatically generated by CARTO and should NOT be modified.
# If you need to make changes, please modify your customer.env file instead

GOOGLE_APPLICATION_CREDENTIALS=../certs/key.json
CARTO3_SELFHOSTED_VOLUMES_BASE_PATH=./

DOCKER_REGISTRY_BASE_PATH=gcr.io/carto-onprem-artifacts
CARTO_SELFHOSTED_AUTH0_CLIENT_ID=${CARTO_AUTH0_CLIENT_ID}

### GENERIC CONF

## IMAGES
ROUTER_HTTP_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/router/router-http:${CARTO_SELFHOSTED_VERSION}
ROUTER_METRICS_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/router/router-metrics:${CARTO_SELFHOSTED_VERSION}
HTTP_CACHE_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/http-cache:${CARTO_SELFHOSTED_VERSION}
NOTIFIER_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/notifier:${CARTO_SELFHOSTED_VERSION}
ACCOUNTS_WWW_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/accounts-www:${CARTO_SELFHOSTED_VERSION}
WORKSPACE_API_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/workspace-api:${CARTO_SELFHOSTED_VERSION}
WORKSPACE_WWW_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/workspace-www:${CARTO_SELFHOSTED_VERSION}
MAPS_API_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/maps-api:${CARTO_SELFHOSTED_VERSION}
CDN_INVALIDATOR_SUB_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/consumers/cdn-invalidator-sub:${CARTO_SELFHOSTED_VERSION}
ACCOUNTS_MIGRATIONS_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/accounts-db:${CARTO_SELFHOSTED_VERSION}
WORKSPACE_MIGRATIONS_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/workspace-db:${CARTO_SELFHOSTED_VERSION}
IMPORT_API_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/import-api:${CARTO_SELFHOSTED_VERSION}
LDS_API_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/lds-api:${CARTO_SELFHOSTED_VERSION}
NOTIFIER_DOCKER_IMAGE=${DOCKER_REGISTRY_BASE_PATH}/notifier:${CARTO_SELFHOSTED_VERSION}

### WWW variables
REACT_APP_CLIENT_ID=${CARTO_AUTH0_CLIENT_ID}
REACT_APP_AUTH0_DOMAIN=${CARTO_AUTH0_CUSTOM_DOMAIN}
REACT_APP_ACCOUNTS_API_URL=https://${ACC_DOMAIN}
REACT_APP_ACCOUNTS_URL=https://${SELFHOSTED_DOMAIN}/acc/
REACT_APP_WORKSPACE_API_URL=https://${SELFHOSTED_DOMAIN}/workspace-api
REACT_APP_NOTIFIER_API_URL=https://${SELFHOSTED_DOMAIN}/notifier
REACT_APP_API_BASE_URL=https://${SELFHOSTED_DOMAIN}/api
REACT_APP_PUBLIC_MAP_URL=https://${SELFHOSTED_DOMAIN}/api/v3/maps/public
REACT_APP_AUTH0_AUDIENCE=carto-cloud-native-api
REACT_APP_WORKSPACE_URL_TEMPLATE=https://{tenantDomain}
REACT_APP_CUSTOM_TENANT=${SELFHOSTED_TENANT_ID}
REACT_APP_HUBSPOT_ID=474999
REACT_APP_HUBSPOT_LIMIT_FORM_ID=cd9486fa-5766-4bac-81b9-d8c6cd029b3b
REACT_APP_HUBSPOT_REQUEST_SUBSCRIPTION_FORM_ID=49d53632-80f9-4720-b4be-bf623a527af4
REACT_APP_BIGQUERY_OAUTH=false

## Common config
AUTH0_AUDIENCE=carto-cloud-native-api
AUTH0_DOMAIN=${CARTO_AUTH0_CUSTOM_DOMAIN}
AUTH0_NAMESPACE=http://app.carto.com
LOG_LEVEL=debug

REDIS_CACHE_PREFIX=onprem

## PUB SUB
PUBSUB_MODE=pull

PUBSUB_PROJECT_ID=${SELFHOSTED_GCP_PROJECT_ID}

## Conflictive with onprem tenant && regular tenants
PUBSUB_DATA_UPDATES_TOPICS_TEMPLATE=projects/{project_id}/topics/data-updates

EVENT_BUS_TOPIC=projects/${ACC_GCP_PROJECT_ID}/topics/${ACC_GCP_PROJECT_REGION}-event-bus
EVENT_BUS_PROJECT_ID=${ACC_GCP_PROJECT_ID}

DO_ENABLED=false

## Workspace config
CARTO_SELFHOSTED_NAME=${SELFHOSTED_TENANT_ID}
CARTO_SELFHOSTED_DOMAIN=${SELFHOSTED_DOMAIN}
CARTO_SELFHOSTED_GCP_PROJECT_ID=${SELFHOSTED_GCP_PROJECT_ID}

# if you change the TENANT_ID you need to change the DataUpdate's topic and sub
WORKSPACE_TENANT_ID=${SELFHOSTED_TENANT_ID}

WORKSPACE_PUBSUB_DATA_UPDATES_TOPIC=projects/${SELFHOSTED_GCP_PROJECT_ID}/topics/data-updates
WORKSPACE_PUBSUB_DATA_UPDATES_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/data-updates-workspace-sub
WORKSPACE_PUBSUB_TENANT_BUS_TOPIC=projects/${SELFHOSTED_GCP_PROJECT_ID}/topics/tenant-bus
WORKSPACE_PUBSUB_TENANT_BUS_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/tenant-bus-workspace-sub
WORKSPACE_PUBSUB_EVENT_BUS_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/event-bus-workspace-sub

WORKSPACE_API_INTERNAL_URL=workspace-api:3000
CARTO_SELFHOSTED_DEPLOYMENT=docker

# Sync data for newer verisons of the code
WORKSPACE_SYNC_DATA_ENABLED=true

# Notifier
WORKSPACE_NOTIFIER_ENABLED=true
WORKSPACE_NOTIFIER_PUBLISH_URL=http://notifier:5561/publish/

## Maps API config
MAPS_API_V3_TENANT_ID=${SELFHOSTED_TENANT_ID}
MAPS_API_V3_RESOURCE_URL_HOST=${SELFHOSTED_DOMAIN}
MAPS_API_V3_RESOURCE_URL_TEMPLATE_NEW='https://${host}/api/${path}'
MAPS_API_V3_RESOURCE_URL_ALLOWED_HOSTS=${SELFHOSTED_DOMAIN}
MAPS_API_V3_PUBSUB_TENANT_BUS_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/tenant-bus-sql-worker-sub
MAPS_API_V3_PUBSUB_TENANT_BUS_TOPIC=projects/${SELFHOSTED_GCP_PROJECT_ID}/topics/tenant-bus

## Import API config
IMPORT_TENANT_ID=${SELFHOSTED_TENANT_ID}
IMPORT_WORKER_PROCESSING_DIR=/tmp/import-worker

IMPORT_PUBSUB_TENANT_BUS_TOPIC=projects/${SELFHOSTED_GCP_PROJECT_ID}/topics/tenant-bus
IMPORT_PUBSUB_TENANT_BUS_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/tenant-bus-import-sub

### GDAL
IMPORT_GDAL_OGR2OGR=
IMPORT_GDAL_OGRINFO=
IMPORT_GDAL_GDALINFO=

## CDN Invalidator config
CDN_INVALIDATOR_BACKEND_ENGINE=varnish
CDN_INVALIDATOR_OPERATION_MODE=surrogate-key
CDN_INVALIDATOR_SUBSCRIBER_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/event-bus-cdn-inval-sub
CDN_INVALIDATOR_TENANT_ID=${SELFHOSTED_TENANT_ID}

## SQL worker config
MAPS_API_V3_PUBSUB_TENANT_BUS_TOPIC=projects/${SELFHOSTED_GCP_PROJECT_ID}/topics/tenant-bus
MAPS_API_V3_PUBSUB_TENANT_BUS_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/tenant-bus-sql-worker-sub

## DW Consumption Tracking (compute-sub)
COMPUTE_PUBSUB_DATA_UPDATES_SUBSCRIPTION=projects/${SELFHOSTED_GCP_PROJECT_ID}/subscriptions/data-updates-compute-sub
# Note: compute-sub also uses WORKSPACE_PUBSUB_DATA_UPDATES_TOPIC

# ERROR_RESPONSE_STACK_TRACE
MAPS_API_V3_ERROR_RESPONSE_STACK_TRACE=false
WORKSPACE_ERROR_RESPONSE_STACK_TRACE=false
WORKFLOWS_ERROR_RESPONSE_STACK_TRACE=false
IMPORT_ERROR_RESPONSE_STACK_TRACE=false
LDS_ERROR_RESPONSE_STACK_TRACE=false
CDN_INVALIDATOR_SUBSCRIBER_ERROR_RESPONSE_STACK_TRACE=false

## ADD-NEW-TENANT-COMPONENT: Add the new component env vars
# NEW_WHATEVER_ENV=<FILL_ME>
# NEW_WHATEVER_OTHER_ENV=<FILL_ME>

# Router Metrics
ROUTER_METRICS_PUBSUB_TOPIC=data-updates
ROUTER_METRICS_PUBSUB_PROJECT_ID=${SELFHOSTED_GCP_PROJECT_ID}
ROUTER_METRICS_PUBSUB_SUBSCRIPTION_FILTER=aggregated-selfhosted-metrics

REACT_APP_ASKNICELY_MIN_HOURS_ACCOUNT_OLD_ENOUGH=1920 # 80 days

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
