#!/bin/bash
for d in tiny-imagenet-200/train/*/; do
  for f in $d/images/*.JPEG; do
    mv $f $d
  done
done
