CXX = g++
CXXFLAGS = -O2 -std=c++17
#INCLUDE = -IC:\SFML-2.5.1\include -DSFML_STATIC
#LIBS = -LC:\SFML-2.5.1\lib -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lwinmm -lgdi32 -lfreetype -lopengl32
#-------------------------------------------------------------------------------
SOURCES_CPP = $(shell find -type f -name '.cpp')
OBJECTS = main.o queens.o
#-------------------------------------------------------------------------------
DESTDIR = .
TARGET = m
#-------------------------------------------------------------------------------
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@
#-------------------------------------------------------------------------------
$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) $(LIBS) -o $@
#-------------------------------------------------------------------------------
all: $(TARGET)
install: all
	-mv $(DESTDIR)/$(TARGET) $(DESTDIR)/__$(TARGET)
	-mv $(TARGET) $(DESTDIR)/$(TARGET)
clean:
	-rm -f $(OBJECTS) $(TARGET)
.PHONY: all install clean
#-------------------------------------------------------------------------------