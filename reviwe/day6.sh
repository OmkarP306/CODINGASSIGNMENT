cd ~/Desktop/
mkdir main
cd ~/Desktop/main/
mkdir sub1 sub2 sub3
cd ~/Desktop/items/
for files in`ls|grep a.pdf && ls|grep b.doc && ls|grep c.mp3`
do
    fn=`echo $files|awk -F.'{Print $2}'`
    cf=`echo $files|awk -F.'{Print $1}'`
mkdir /$fn/$cf
cp ~/Desktop/items/$files ~/Desktop/main/sub2/$fn/$cf/
done



