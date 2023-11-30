#/bin/bash
#
# Play reminders for the course schedule.
#
# Schedule in Markdown for convenient copy-pasting:
#
# | From  | To    | What                           |
# |-------|-------|--------------------------------|
# | 9:00  | 10:00 | .                              |
# | 10:00 | 10:15 | Break                          |
# | 10:15 | 11:00 | .                              |
# | 11:00 | 11:15 | Break                          |
# | 11:15 | 12:00 | .                              |
# | 12:00 | 13:00 | Lunch                          |
# | 13:00 | 13:45 | .                              |
# | 13:45 | 14:00 | Break                          |
# | 14:00 | 14:45 | .                              |
# | 14:45 | 15:00 | Break                          |
# | 15:00 | 15:30 | .                              |
# | 15:30 | 16:00 | Reflection                     |

echo 'espeak -s 120 -p 10 "start to work"' | at 9:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 10:00
echo 'espeak -s 120 -p 10 "back to work"' | at 15:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 11:00
echo 'espeak -s 120 -p 10 "back to work"' | at 11:15	
echo 'espeak -s 120 -p 10 "lunchtime"' | at 12:00
echo 'espeak -s 120 -p 10 "start to work"' | at 13:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 13:45
echo 'espeak -s 120 -p 10 "back to work"' | at 14:00
echo 'espeak -s 120 -p 10 "breaktime"' | at 14:45
echo 'espeak -s 120 -p 10 "back to work"' | at 15:00
echo 'espeak -s 120 -p 10 "reflection"' | at 15:30

