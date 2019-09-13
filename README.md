# dpp
- Extract  
`tar -xf file_name.tar -C /target/directory`  
`unzip file.zip -d path`  
- Train  
`sh tar_extract_script.sh`  
```
#!/bin/bash
for f in *.tar; do
  d=`basename $f .tar`
  mkdir $d
  (cd $d && tar xf ../$f && rm -r ../$f)
done
```  
- Train (tiny)  
`sh tiny-imagenet-200-train.sh`
```
#!/bin/bash
for d in tiny-imagenet-200/train/*/; do
  for f in $d/images/*.JPEG; do
    mv $f $d
  done
done
```  
- Val  
`cd val`  
`wget https://raw.githubusercontent.com/soumith/imagenetloader.torch/master/valprep.sh`  
- Resizing images recursively based on minwidth and minheight  
`find . -name '*.JPEG' -execdir sh -c "mogrify -resize '256x256^' *.JPEG" {} \;`
