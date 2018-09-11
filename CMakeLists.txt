cmake_minimum_required(VERSION 3.8)
project(condatest VERSION 1.0.0)

find_path(ZMQ_INC zmq.h)
find_library(ZMQ_LIB zmq)

add_library(${PROJECT_NAME}lib SHARED lib.cpp)
target_link_libraries(${PROJECT_NAME}lib PRIVATE ${ZMQ_LIB})
target_include_directories(${PROJECT_NAME}lib PRIVATE ${ZMQ_INC})


add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE ${PROJECT_NAME}lib)
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
install(TARGETS ${PROJECT_NAME}lib LIBRARY DESTINATION lib)
