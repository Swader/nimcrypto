# Package

version       = "0.3.8"
author        = "Eugene Kabanov"
description   = "Nim cryptographic library"
license       = "MIT"
skipDirs      = @["tests", "examples", "Nim", "docs"]

# Dependencies

requires "nim > 0.18.0"

# Tests

task tests, "Runs the test suite":
  exec "nim c -f -r tests/testkeccak"
  exec "nim c -f -r tests/testsha2"
  exec "nim c -f -r tests/testripemd"
  exec "nim c -f -r tests/testblake2"
  exec "nim c -f -r tests/testhmac"
  exec "nim c -f -r tests/testrijndael"
  exec "nim c -f -r tests/testtwofish"
  exec "nim c -f -r tests/testblowfish"
  exec "nim c -f -r tests/testbcmode"
  exec "nim c -f -r tests/testsysrand"
  exec "nim c -f -r tests/testkdf"
  exec "nim c -f -r tests/testapi"
  exec "nim c -f -d:release -r tests/testkeccak"
  exec "nim c -f -d:release -r tests/testsha2"
  exec "nim c -f -d:release -r tests/testripemd"
  exec "nim c -f -d:release -r tests/testblake2"
  exec "nim c -f -d:release -r tests/testhmac"
  exec "nim c -f -d:release -r tests/testrijndael"
  exec "nim c -f -d:release -r tests/testtwofish"
  exec "nim c -f -d:release -r tests/testblowfish"
  exec "nim c -f -d:release -r tests/testbcmode"
  exec "nim c -f -d:release -r tests/testsysrand"
  exec "nim c -f -d:release -r tests/testkdf"
  exec "nim c -f -d:release -r tests/testapi"
  exec "nim c -f -r examples/ecb"
  exec "nim c -f -r examples/cbc"
  exec "nim c -f -r examples/ofb"
  exec "nim c -f -r examples/cfb"
  exec "nim c -f -r examples/ctr"
  exec "nim c -f -r examples/gcm"