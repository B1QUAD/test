chars=abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ

for i in {1..420} ; do
	echo "${chars:RANDOM%${#chars}:1}" >> test.txt
	git add test.txt
	git commit -m "testing"
done	
git push -u origin main
	
