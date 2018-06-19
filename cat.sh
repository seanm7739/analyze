
cat /mnt/streaming-mod/result/PUDOCK/$1/result-c3* > t1
cat /mnt/streaming-mod/result/PUDOCK/$1/result-c6* > t2
cat /mnt/streaming-mod/result/PUDOCK/$1/result-c8* > t3
cat t1 t2 t3 > ../$2
