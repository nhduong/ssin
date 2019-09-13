# dpp
- Extract  
`tar -xf file_name.tar -C /target/directory`  
- Val  
`cd val`  
`wget https://raw.githubusercontent.com/soumith/imagenetloader.torch/master/valprep.sh`  
- Resizing images recursively based on minwidth and minheight  
`find . -name '*.JPEG' -execdir sh -c "mogrify -resize '256x256^' *.JPEG" {} \;`
