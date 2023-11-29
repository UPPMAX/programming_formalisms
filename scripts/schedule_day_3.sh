#/bin/bash
echo 'espeak -s 120 -p 10 "start to work"' | at 9:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 10:00
echo 'espeak -s 120 -p 10 "back to work"' | at 15:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 11:00
echo 'espeak -s 120 -p 10 "back to work"' | at 11:15	
echo 'espeak -s 120 -p 10 "lunchtime"' | at 12:00
echo 'espeak -s 120 -p 10 "start to work"' | at 13:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 13:45
echo 'espeak -s 120 -p 10 "back to work"' | at 14:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 14:15
echo 'espeak -s 120 -p 10 "back to work"' | at 15:00
echo 'espeak -s 120 -p 10 "reflection"' | at 15:30

