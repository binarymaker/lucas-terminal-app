#make

#Compiler
CC=gcc

#Targer file
TARGET=lucas-logo


all:
	$(CC) lucas-logo.c -o $(TARGET)

clean:
	rm $(TARGET)

run:
	./$(TARGET)

install:
	sudo cp ./$(TARGET) /usr/bin
	sed -e '/lucas-logo/d' -i /home/$(USER)/.bashrc
	echo $(TARGET) >> /home/$(USER)/.bashrc

uninstall:
	sudo rm /usr/bin/$(TARGET)
	sed -e '/lucas-logo/d' -i /home/$(USER)/.bashrc
