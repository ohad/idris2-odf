module ODFTests

import Test.Golden

odsTests : TestPool
odsTests = MkTestPool "ODS" [] Nothing [
    "index", "slice"
  ]

main : IO ()
main = runner [
    testPaths "ODS" odsTests
  ]
  where
    testPaths : String -> TestPool -> TestPool
    testPaths dir = record { testCases $= map ((dir ++ "/") ++) }