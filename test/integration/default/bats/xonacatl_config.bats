#!/usr/bin/env bats

@test "xonacatl config exists" {
  [ -f "/etc/xonacatl/xonacatl.conf" ]
}
