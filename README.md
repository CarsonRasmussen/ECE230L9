# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Because it is a lot harder to implement using structural verilog through logic gates. 
Implementing latches is much easier to implement using always block

### What is the meaning of always @(*) in a sensitivity block?

It just means it will run when any variable in the block updates.

### What importance is memory to digital circuits?

It's important because it allows for storing information. Without it
you can't track or maintain states of memory.
