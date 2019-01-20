TARGET := CHANGEME

all: $(TARGET).t3

$(TARGET).t3: $(TARGET).t
	t3make -d -D LANGUAGE=en_us -D MESSAGESTYLE=neu -Fy obj -Fo obj -o $(TARGET).t3 -lib system -lib adv3/adv3 -source $(TARGET)
