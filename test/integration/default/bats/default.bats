#!/usr/bin/env bats
 
@test "Validate status code for node exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9100/metrics
  [[ $output = "200" ]]
}