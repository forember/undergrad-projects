#!/bin/sh
case "$(basename "$(pwd)")" in
  Boats) branch=UI1;;
  turtlebot3*) branch=kinetic-devel;;
  *) branch=master;;
esac
git checkout "$branch"
