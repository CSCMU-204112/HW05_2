STUDENT_ID=5XXXXXXXX
HOMEWORK=HW05_2
TASKNAME=T112_$(HOMEWORK)
OUTPUT=max_mid_min

$(OUTPUT): main.o $(HOMEWORK)_$(STUDENT_ID).o
	gcc -Wall -o $(OUTPUT) main.o $(HOMEWORK)_$(STUDENT_ID).o -lm

main.o: main.c $(TASKNAME).h
	gcc -Wall -c main.c -lm

$(HOMEWORK)_$(STUDENT_ID).o: $(HOMEWORK)_$(STUDENT_ID).c $(TASKNAME).h
	gcc -Wall -c $(HOMEWORK)_$(STUDENT_ID).c -lm

clean:
	rm -vf *.o *.exe $(OUTPUT)

