# Install script for directory: /home/ritesh/rc-car/ros2ws/libpcap-1.10.1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ritesh/rc-car/ros2ws/install/pcap")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so.1.10.1"
      "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so.1.10.1;/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so.1")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/ritesh/rc-car/ros2ws/install/pcap/lib" TYPE SHARED_LIBRARY FILES
    "/home/ritesh/rc-car/ros2ws/build/pcap/libpcap.so.1.10.1"
    "/home/ritesh/rc-car/ros2ws/build/pcap/libpcap.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so.1.10.1"
      "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/ritesh/rc-car/ros2ws/install/pcap/lib" TYPE SHARED_LIBRARY FILES "/home/ritesh/rc-car/ros2ws/build/pcap/libpcap.so")
  if(EXISTS "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ritesh/rc-car/ros2ws/install/pcap/lib/libpcap.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/ritesh/rc-car/ros2ws/install/pcap/lib" TYPE STATIC_LIBRARY FILES "/home/ritesh/rc-car/ros2ws/build/pcap/libpcap.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcap" TYPE DIRECTORY FILES "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap-bpf.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap-namedb.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/ritesh/rc-car/ros2ws/build/pcap/pcap-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ritesh/rc-car/ros2ws/build/pcap/libpcap.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap-config.1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_activate.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_breakloop.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_can_set_rfmon.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_close.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_create.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_datalink_name_to_val.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_datalink_val_to_name.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_dump.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_dump_close.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_dump_file.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_dump_flush.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_dump_ftell.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_file.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_fileno.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_findalldevs.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_freecode.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_get_required_select_timeout.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_get_selectable_fd.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_geterr.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_init.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_inject.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_is_swapped.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_lib_version.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_lookupdev.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_lookupnet.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_loop.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_major_version.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_next_ex.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_offline_filter.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_open_live.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_buffer_size.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_datalink.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_promisc.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_protocol_linux.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_rfmon.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_snaplen.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_set_timeout.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_setdirection.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_setfilter.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_setnonblock.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_snapshot.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_stats.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_statustostr.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_strerror.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_tstamp_type_name_to_val.3pcap"
    "/home/ritesh/rc-car/ros2ws/libpcap-1.10.1/pcap_tstamp_type_val_to_name.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_compile.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_datalink.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_dump_open.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_get_tstamp_precision.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_list_datalinks.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_list_tstamp_types.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_open_dead.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_open_offline.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_set_immediate_mode.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_set_tstamp_precision.3pcap"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap_set_tstamp_type.3pcap"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_datalink_val_to_name.3pcap to pcap_datalink_val_to_description.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_datalink_val_to_description.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_datalink_val_to_name.3pcap" "pcap_datalink_val_to_description.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_datalink_val_to_name.3pcap to pcap_datalink_val_to_description.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_datalink_val_to_description.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_datalink_val_to_name.3pcap to pcap_datalink_val_to_description_or_dlt.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_datalink_val_to_description_or_dlt.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_datalink_val_to_name.3pcap" "pcap_datalink_val_to_description_or_dlt.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_datalink_val_to_name.3pcap to pcap_datalink_val_to_description_or_dlt.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_datalink_val_to_description_or_dlt.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_dump_open.3pcap to pcap_dump_fopen.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_dump_fopen.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_dump_open.3pcap" "pcap_dump_fopen.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_dump_open.3pcap to pcap_dump_fopen.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_dump_fopen.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_findalldevs.3pcap to pcap_freealldevs.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_freealldevs.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_findalldevs.3pcap" "pcap_freealldevs.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_findalldevs.3pcap to pcap_freealldevs.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_freealldevs.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_geterr.3pcap to pcap_perror.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_perror.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_geterr.3pcap" "pcap_perror.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_geterr.3pcap to pcap_perror.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_perror.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_inject.3pcap to pcap_sendpacket.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_sendpacket.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_inject.3pcap" "pcap_sendpacket.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_inject.3pcap to pcap_sendpacket.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_sendpacket.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_list_datalinks.3pcap to pcap_free_datalinks.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_free_datalinks.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_list_datalinks.3pcap" "pcap_free_datalinks.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_list_datalinks.3pcap to pcap_free_datalinks.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_free_datalinks.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_list_tstamp_types.3pcap to pcap_free_tstamp_types.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_free_tstamp_types.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_list_tstamp_types.3pcap" "pcap_free_tstamp_types.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_list_tstamp_types.3pcap to pcap_free_tstamp_types.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_free_tstamp_types.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_loop.3pcap to pcap_dispatch.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_dispatch.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_loop.3pcap" "pcap_dispatch.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_loop.3pcap to pcap_dispatch.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_dispatch.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_major_version.3pcap to pcap_minor_version.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_minor_version.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_major_version.3pcap" "pcap_minor_version.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_major_version.3pcap to pcap_minor_version.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_minor_version.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_next_ex.3pcap to pcap_next.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_next.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_next_ex.3pcap" "pcap_next.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_next_ex.3pcap to pcap_next.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_next.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_dead.3pcap to pcap_open_dead_with_tstamp_precision.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_open_dead_with_tstamp_precision.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_open_dead.3pcap" "pcap_open_dead_with_tstamp_precision.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_dead.3pcap to pcap_open_dead_with_tstamp_precision.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_dead_with_tstamp_precision.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline.3pcap to pcap_open_offline_with_tstamp_precision.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_open_offline_with_tstamp_precision.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_open_offline.3pcap" "pcap_open_offline_with_tstamp_precision.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline.3pcap to pcap_open_offline_with_tstamp_precision.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline_with_tstamp_precision.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline.3pcap to pcap_fopen_offline.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_fopen_offline.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_open_offline.3pcap" "pcap_fopen_offline.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline.3pcap to pcap_fopen_offline.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_fopen_offline.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline.3pcap to pcap_fopen_offline_with_tstamp_precision.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_fopen_offline_with_tstamp_precision.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_open_offline.3pcap" "pcap_fopen_offline_with_tstamp_precision.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_open_offline.3pcap to pcap_fopen_offline_with_tstamp_precision.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_fopen_offline_with_tstamp_precision.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_tstamp_type_val_to_name.3pcap to pcap_tstamp_type_val_to_description.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_tstamp_type_val_to_description.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_tstamp_type_val_to_name.3pcap" "pcap_tstamp_type_val_to_description.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_tstamp_type_val_to_name.3pcap to pcap_tstamp_type_val_to_description.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_tstamp_type_val_to_description.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Symlinking: $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_setnonblock.3pcap to pcap_getnonblock.3pcap")
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "remove" "pcap_getnonblock.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
          )
         execute_process(
            COMMAND "/usr/bin/cmake" "-E" "create_symlink" "pcap_setnonblock.3pcap" "pcap_getnonblock.3pcap"
            WORKING_DIRECTORY $ENV{DESTDIR}/home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3
            RESULT_VARIABLE EXIT_STATUS
          )
          if(NOT EXIT_STATUS EQUAL 0)
              message(FATAL_ERROR "Could not create symbolic link from /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_setnonblock.3pcap to pcap_getnonblock.3pcap")
          endif()
          set(CMAKE_INSTALL_MANIFEST_FILES ${CMAKE_INSTALL_MANIFEST_FILES} /home/ritesh/rc-car/ros2ws/install/pcap/share/man/man3/pcap_getnonblock.3pcap)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man5" TYPE FILE FILES "/home/ritesh/rc-car/ros2ws/build/pcap/pcap-savefile.5")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man7" TYPE FILE FILES
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap-filter.7"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap-linktype.7"
    "/home/ritesh/rc-car/ros2ws/build/pcap/pcap-tstamp.7"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ritesh/rc-car/ros2ws/build/pcap/testprogs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ritesh/rc-car/ros2ws/build/pcap/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
