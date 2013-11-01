
SOURCES = main.cc

HEADERS = 

OBJECTS = ${SOURCES:.cc=.o}

TARGET = cake

CPPFLAGS = 
CXXFLAGS = -std=c++11 -W -Wall -Werror

LDFLAGS = 

${TARGET}: ${OBJECTS}
	${CXX} ${CXXFLGAS} -o $@ ${OBJECTS} ${LDFLAGS}

%.o: %.cc ${HEADERS}
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $^ -o $@

.PHONY: clean
clean:
	${RM} ${OBJECTS} ${TARGET} *~
