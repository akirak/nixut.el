let Schema = ./schema.dhall

let Package = Schema.Package

let TestDriver = Schema.TestDriver

in  [ Package::{
      , pname = "nixut"
      , version = "0.1"
      , emacsVersion = "25.1"
      , files = [ "nixut.el" ]
      , dependencies = [] : List Text
      , testDrivers = [ TestDriver.buttercup ]
      , buttercupTests = [ "test/nixut-test.el" ]
      , recipe =
          ''
          (nixut :fetcher github :repo "akirak/nixut.el"
            :files ("nixut.el"))
          ''
      }
    ]
