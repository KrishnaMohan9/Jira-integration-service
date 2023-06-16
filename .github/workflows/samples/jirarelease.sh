#!/bin/sh

content=$(curl --location "'"${{ env.RESTAPI }}"'" \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic Z2FubmFtcmFqdS5rbW9oYW5AZ21haWwuY29tOkFUQVRUM3hGZkdGMGo5RUNZREZXb3d6Q2dYZF9aYnJ6UkJGMk85Z2pWeDFxVlE2UmtLdjczWjlxcnNXT2NkUVpud0dFenh0N1VheHh6d0UtNXdDU3VSRmRZZXdGYTAtclNaS2RNLXdGNHZESlcyWWF3alZPazd1QVVscXFkQjdZMXR3QV9wN1lpRUxSczk4cWtxempxbE4wQXY1eFp2MlA1bXZuYXZJWUctRHJIR24tam5VVEN5VT0wNDk2QkZFRQ=='| jq -r '.values[].id')


#versionid="ari:cloud:jira:37570433-08ae-464a-b8c0-9d28c52f048a:version/activation/6c468cdf-3fb8-4dae-a543-ead783a4d810"
#url="https://sonar-mule.qdot.qld.gov.au/"
#report="Sonar Report"
#testing="communication"

#curl --location 'https://devopsprodemo.atlassian.net/gateway/api/graphql' \
#--header 'X-ExperimentalApi:  AddRelatedWorkToVersion' \
#--header 'Content-Type: application/json' \
#--header 'Authorization: Basic Z2FubmFtcmFqdS5rbW9oYW5AZ21haWwuY29tOkFUQVRUM3hGZkdGMGo5RUNZREZXb3d6Q2dYZF9aYnJ6UkJGMk85Z2pWeDFxVlE2UmtLdjczWjlxcnNXT2NkUVpud0dFenh0N1VheHh6d0UtNXdDU3VSRmRZZXdGYTAtclNaS2RNLXdGNHZESlcyWWF3alZPazd1QVVscXFkQjdZMXR3QV9wN1lpRUxSczk4cWtxempxbE4wQXY1eFp2MlA1bXZuYXZJWUctRHJIR24tam5VVEN5VT0wNDk2QkZFRQ==' \
#--data '{"query":"mutation useAddGenericLinkRelatedWork_addRelatedWorkMutation($versionId: ID!, $relatedWorkId: ID!, $url: URL, $title: String, $category: String!) {\n  jira {\n    addRelatedWorkToVersion(input: {versionId: $versionId, relatedWorkId: $relatedWorkId, url: $url, title: $title, category: $category} ) {\n      success\n      errors {\n        message\n      }\n    }\n  }\n}",
#"variables":{"versionId":"'"$versionid/$content"'","relatedWorkId":"'"$content"'","url":"'"$url/dashboard?id=meda-customer-service"'","title":"'"$report"'","category":"'"$testing"'"}}'
