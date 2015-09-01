LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := stockfish
LOCAL_SRC_FILES := \
				   ../src/benchmark.cpp \
				   ../src/bitbase.cpp \
				   ../src/bitboard.cpp \
				   ../src/endgame.cpp \
				   ../src/evaluate.cpp \
				   ../src/main.cpp \
				   ../src/material.cpp \
				   ../src/misc.cpp \
				   ../src/movegen.cpp \
				   ../src/movepick.cpp \
				   ../src/pawns.cpp \
				   ../src/position.cpp \
				   ../src/search.cpp \
				   ../src/thread.cpp \
				   ../src/timeman.cpp \
				   ../src/tt.cpp \
				   ../src/uci.cpp \
				   ../src/ucioption.cpp

LOCAL_CFLAGS    := -DNO_PREFETCH=1

LOCAL_C_INCLUDES := ../src/

LOCAL_STATIC_LIBRARIES := stlport

include $(BUILD_EXECUTABLE)

