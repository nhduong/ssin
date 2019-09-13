# dpp
- Extract
`tar -xf file_name.tar -C /target/directory`
- Resizing images recursively based on minwidth and minheight  
`find . -name '*.JPEG' -execdir sh -c "mogrify -resize '256x256^' *.JPEG" {} \;`
