#!/bin/bash
TITLE=$1
AUTHOR=$2
DATE=$3
IMAGE=$4


mkdir ./content/posts/$DATE/
touch ./content/posts/$DATE/index.md

wget "$IMAGE" -O ./content/posts/$DATE/$(basename "$IMAGE")

echo --- >> ./content/posts/$DATE/index.md
echo title: \"$TITLE\" >> ./content/posts/$DATE/index.md
echo date: $DATE >> ./content/posts/$DATE/index.md
echo author: $AUTHOR >> ./content/posts/$DATE/index.md
echo type: blog >> ./content/posts/$DATE/index.md
echo --- >> ./content/posts/$DATE/index.md
echo "" >> ./content/posts/$DATE/index.md
echo "![$TITLE](/posts/$DATE/$(basename $IMAGE))" >> ./content/posts/$DATE/index.md
echo "<!--more-->" >> ./content/posts/$DATE/index.md
echo "" >> ./content/posts/$DATE/index.md
