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
- Val  
`cd val`  
`wget https://raw.githubusercontent.com/soumith/imagenetloader.torch/master/valprep.sh`  
- Resizing images recursively based on minwidth and minheight  
`find . -name '*.JPEG' -execdir sh -c "mogrify -resize '256x256^' *.JPEG" {} \;`
