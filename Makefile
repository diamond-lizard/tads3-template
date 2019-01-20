################################################################
#
# Change the following to your liking:
#

GAME_FILENAME_PREFIX := CHANGEME

# Compile for debugging (include symbols) ?
T3_DEBUG := on

# Source file
T3_SOURCE_FILE := $(GAME_FILENAME_PREFIX).t

# Which language to use
T3_LANGUAGE := en_us
T3_MESSAGESTYLE := neu

# Where to put symbol files
T3_SYMBOL_DIRECTORY := obj

# Where to put object files
T3_OBJECT_DIRECTORY := obj

# What to call the final built game file
T3_IMAGE_FILE_NAME := $(GAME_FILENAME_PREFIX).t3

# What libraries to use
T3_LIBRARIES := -lib system
T3_LIBRARIES += -lib adv3/adv3

################################################################
#
# The following should not need to be touched, as it just
# uses the options set above.
#

# compile for debugging (include symbols)
ifeq ($(T3_DEBUG),on)
	T3MAKE_OPTS += -d
endif

# Preprocessor symbols
T3MAKE_OPTS += -D LANGUAGE=$(T3_LANGUAGE)
T3MAKE_OPTS += -D MESSAGESTYLE=$(T3_MESSAGESTYLE)

# Put symbol files in the following directory:
T3MAKE_OPTS += -Fy $(T3_SYMBOL_DIRECTORY)

# Put object files in the following directory:
T3MAKE_OPTS += -Fo $(T3_OBJECT_DIRECTORY)

# What to call the final built game file
T3MAKE_OPTS += -o $(T3_IMAGE_FILE_NAME)

# What libraries to use
T3MAKE_OPTS += $(T3_LIBRARIES)

T3MAKE_OPTS += -source $(GAME_FILENAME_PREFIX)

$(GAME_FILENAME_PREFIX).t3: $(T3_SOURCE_FILE)
	t3make $(T3MAKE_OPTS)

all: $(GAME_FILENAME_PREFIX).t3

clean:
	rm -f $(T3_IMAGE_FILE_NAME)
	rm -f $(T3_SYMBOL_DIRECTORY)/*
	rm -f $(T3_OBJECT_DIRECTORY)/*
	rm -f GameInfo.txt
