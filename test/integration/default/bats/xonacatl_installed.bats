#!/usr/bin/env bats

@test "xonacatl server binary is installed" {
  [ -x "/opt/go/bin/xonacatl_server" ]
}
