all: CHANGEME.t3

CHANGEME.t3: CHANGEME.t
	t3make -d -D LANGUAGE=en_us -D MESSAGESTYLE=neu -Fy obj -Fo obj -o CHANGEME.t3 -lib system -lib adv3/adv3 -source CHANGEME
