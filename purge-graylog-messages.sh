#!/usr/bin/env bash

curl -XPOST 'localhost:9200/graylog_*/message/_delete_by_query?conflicts=proceed&pretty' -d'
{
    "query": {
        "match_all": {}
    }
}'