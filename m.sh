
gcc -c convenience.c -o obj/convenience.o
gcc -c radio_fm.c -I/usr/include/libusb-1.0/ -o obj/radio_fm.o
gcc obj/radio_fm.o obj/convenience.o -lpthread -lusb-1.0 -lrtlsdr -lm -o radio_fm

