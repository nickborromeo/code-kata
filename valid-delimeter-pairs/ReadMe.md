# Delimeter Pair Matching
---

A recent technical interview provided the following problem.

Given a string that contains '(', ')', '[', ']', '{', '}' create a method that takes the string as an input and return true if call delimeters where properly closed. 

Examples:

1. "()" => true
2. "()()()" => true
3. "[[[[[[ [[" => false
4. "(]" => false

To be honest I struggled with this one. I thought I could do it using lots of conditionals. Needless to say I had a hard time doing that. Then after some time I thought, use the pop and shift option to match the first and last characters. That blew up with the example ()()(). 

Eventually I ran out of time and missed my chance. The interviewer was kind enough to give me tips. He said that to solve this problem you need a stack. After that, I remembered instantly that this problem was already given to us back in the day! 

I forgot the implementation and missed out on a chance to progress to the next stage of the interview process. 

Lesson learned and the resolution is to practice, practice, practice!!!! 
