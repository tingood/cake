
SOURCES =
HEADERS = 

OBJECTS = ${SOURCES:.cc=.o}

MAIN_SOURCE = main.cc
MAIN_OBJECT = ${MAIN_SOURCE:.cc=.o}

TEST_SOURCES = test/main.cc
TEST_OBJECTS = ${TEST_SOURCES:.cc=.o}

TARGET = cake

TEST_TARGET = test_cake

CPPFLAGS = 
CXXFLAGS = -std=c++11 -W -Wall -Werror

LDFLAGS = -lpthread

${TARGET}: ${OBJECTS} ${MAIN_OBJECT}
	${CXX} ${CXXFLGAS} -o $@ ${OBJECTS} ${MAIN_OBJECT} ${LDFLAGS}

${TEST_TARGET}: ${OBJECTS} ${TEST_OBJECTS}
	${CXX} ${CXXFLAGS} -o $@ ${OBJECTS} ${TEST_OBJECTS} ${LDFLAGS} -lgtest

%.o: %.cc ${HEADERS}
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $^ -o $@

.PHONY: test
test: ${TEST_TARGET}

.PHONY: check
check: ${TEST_TARGET}
	./${TEST_TARGET}

.PHONY: clean
clean:
	${RM} ${OBJECTS} ${MAIN_OBJECT} ${TEST_OBJECTS} ${TARGET} \
	${TEST_TARGET} *~ test/*~
