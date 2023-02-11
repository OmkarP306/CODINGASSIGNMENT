
for item in  `ls | grep x.pdf && ls| grep a.mp3`

do 
    fn=`echo $item | awk -F. '{print $1}'`
    cf=`echo $item | awk -F. '{print $2}'`
    mkdir $fn/$cf
    mv  $item   $fn/$cf/
done

