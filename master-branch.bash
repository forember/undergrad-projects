#!/bin/bash
case "$(basename "$(pwd)")" in
  Boats) branch=UI1;;
  lambd-haskell) branch=main;;
  turtlebot3*) branch=kinetic-devel;;
  *) branch=master;;
esac
git checkout "$branch"
