ORG=$1
PIPELINE=$2
TARGET=$3
curl -H "Authorization: Bearer $TOKEN" -X POST "https://api.buildkite.com/v2/organizations/$ORG/pipelines/$PIPELINE/builds" \
  -d @- << EOF 
{
    "commit": "HEAD",
    "branch": "main",
    "message": "Testing $TARGET :rocket:",
    "env": {
      "TEST_TAG": "some_value",
      "TARGET": "$TARGET"
    },
    "meta_data": {
      "some build data": "value",
      "other build data": true
    }
  }
EOF
