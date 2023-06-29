#!/bin/sh

#branch=`git branch --show-current | tr -d "[:space:]" | sed 's:.*/::'`
#content=$(curl --location 'https://tmrcoral.atlassian.net/rest/api/2/project/10019/version?expand=issuesstatus&maxResults=25&orderBy=-sequence&startAt=0&status=unreleased' \
#--header 'Authorization: Basic a3Jpc2huYS5tLmdhbm5hbXJhanVAdG1yLnFsZC5nb3YuYXU6QVRBVFQzeEZmR0YwWEdmUUM4YmQydGI3dzRxbnVNOXFpZFRfLXM5WkhpMkQ5YUlJSTlNdjNwSi0wakpFN1Uyc25PNDQzMU1HT1BTZUFwYVpWZzVJZzNmNTQ2d1pYNWhuVzhZNUZRd3NGRUFfT29yOFh3QVVFTU5fYndfRzZiQk5BODA2Ml8tT2FEbDl6clNUMi0xOHc3Y1lETDh5WnFBMkQ0NHQ0a3dSRnFzSDFpM28zZWJJd1lFPUNFRUM0MDUy' | jq -r '.values[].name' | grep $branch )

#branch=`git branch --show-current | tr -d "[:space:]" | sed 's:.*/::'`

#echo $content


#output=$(echo $content | grep '$branch')

#echo $output
branch=`git branch --show-current | tr -d "[:space:]" | sed 's:.*/::'`
content=$(curl --location  $RESTAPI \
--header 'Content-Type: application/json' \
--header "Authorization: Basic $TOKEN"| jq -r '.values[].name' | grep $branch)

echo $content

versionid=$(curl --location  "https://devopsprodemo.atlassian.net/rest/api/2/project/10000/version?expand=issuesstatus&maxResults=25&orderBy=-sequence&startAt=0&status=unreleasedquery=${content}" \
--header 'Content-Type: application/json' \
--header "Authorization: Basic $TOKEN")

echo $versionid
  

#content=$(curl --location 'https://devopsprodemo.atlassian.net/rest/api/2/project/10000/version?expand=issuesstatus&maxResults=25&orderBy=-sequence&startAt=0&status=unreleased&status=unreleased&query=$content' \
#--header 'Authorization: Basic Z2FubmFtcmFqdS5rbW9oYW5AZ21haWwuY29tOkFUQVRUM3hGZkdGMGo5RUNZREZXb3d6Q2dYZF9aYnJ6UkJGMk85Z2pWeDFxVlE2UmtLdjczWjlxcnNXT2NkUVpud0dFenh0N1VheHh6d0UtNXdDU3VSRmRZZXdGYTAtclNaS2RNLXdGNHZESlcyWWF3alZPazd1QVVscXFkQjdZMXR3QV9wN1lpRUxSczk4cWtxempxbE4wQXY1eFp2MlA1bXZuYXZJWUctRHJIR24tam5VVEN5VT0wNDk2QkZFRQ=='| jq -r '.values[].name' | grep $branch)




#report="meda-digital-licensing-service-sonarreport"
#testing="licensing-service"

#curl --location 'https://devopsprodemo.atlassian.net/gateway/api/graphql' \
#--header 'X-ExperimentalApi:  AddRelatedWorkToVersion' \
#--header 'Content-Type: application/json' \
#--header "Authorization: Basic  $TOKEN" \
#--data '{"query":"mutation useAddGenericLinkRelatedWork_addRelatedWorkMutation($versionId: ID!, $relatedWorkId: ID!, $url: URL, $title: String, $category: String!) {\n  jira {\n    addRelatedWorkToVersion(input: {versionId: $versionId, relatedWorkId: $relatedWorkId, url: $url, title: $title, category: $category} ) {\n      success\n      errors {\n        message\n      }\n    }\n  }\n}",
# "variables":{"versionId":"'"$versionid/$content"'","relatedWorkId":"'"$testing"'","url":"'"$url/dashboard?id=meda-digital-licensing-service"'","title":"'"$report"'","category":"'"$testing"'"}}'
