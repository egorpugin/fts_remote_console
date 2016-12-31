# GNU Make project makefile autogenerated by GENie
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = remote_console.make

ifeq ($(config),debug32)
  OBJDIR         = ../build/x32/debug/remote_console
  TARGETDIR      = ../bin/x32_debug/TestMain
  TARGET         = $(TARGETDIR)/remote_console.exe
  DEFINES       += -DASIO_STANDALONE -DDEBUG -DFTS_WINDOWS -D_WIN32_WINNT=0x0601
  INCLUDES      += -I../../../code/thirdparty -I../../../code/thirdparty/imgui -I../../../code/thirdparty/glfw/include -I../../../code
  INCLUDES      +=
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m32
  ALL_CXXFLAGS  += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m32
  ALL_OBJCFLAGS += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m32
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../bin/x32_debug/imgui -L../bin/x32_debug/net -L. -mwindows -m32
  LDDEPS        += ../bin/x32_debug/imgui/libimgui.a ../bin/x32_debug/imgui/libglfw.a ../bin/x32_debug/net/libnet.a
  LIBS          += $(LDDEPS) -lopengl32 -lws2_32 -lshcore
  EXTERNAL_LIBS +=
  LINKCMD        = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/code/remote_console/console.o \
	$(OBJDIR)/code/remote_console/game_browser.o \
	$(OBJDIR)/code/remote_console/game_info.o \
	$(OBJDIR)/code/remote_console/high_dpi_handler.o \
	$(OBJDIR)/code/remote_console/imgui_ext.o \
	$(OBJDIR)/code/remote_console/imgui_impl_glfw.o \
	$(OBJDIR)/code/remote_console/remote_console_main.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR         = ../build/x32/release/remote_console
  TARGETDIR      = ../bin/x32_release/TestMain
  TARGET         = $(TARGETDIR)/remote_console.exe
  DEFINES       += -DASIO_STANDALONE -DNDEBUG -DFTS_WINDOWS -D_WIN32_WINNT=0x0601
  INCLUDES      += -I../../../code/thirdparty -I../../../code/thirdparty/imgui -I../../../code/thirdparty/glfw/include -I../../../code
  INCLUDES      +=
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -O2 -m32
  ALL_CXXFLAGS  += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -O2 -m32
  ALL_OBJCFLAGS += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -O2 -m32
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../bin/x32_release/imgui -L../bin/x32_release/net -L. -s -mwindows -m32
  LDDEPS        += ../bin/x32_release/imgui/libimgui.a ../bin/x32_release/imgui/libglfw.a ../bin/x32_release/net/libnet.a
  LIBS          += $(LDDEPS) -lopengl32 -lws2_32 -lshcore
  EXTERNAL_LIBS +=
  LINKCMD        = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/code/remote_console/console.o \
	$(OBJDIR)/code/remote_console/game_browser.o \
	$(OBJDIR)/code/remote_console/game_info.o \
	$(OBJDIR)/code/remote_console/high_dpi_handler.o \
	$(OBJDIR)/code/remote_console/imgui_ext.o \
	$(OBJDIR)/code/remote_console/imgui_impl_glfw.o \
	$(OBJDIR)/code/remote_console/remote_console_main.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR         = ../build/x64/debug/remote_console
  TARGETDIR      = ../bin/x64_debug/TestMain
  TARGET         = $(TARGETDIR)/remote_console.exe
  DEFINES       += -DASIO_STANDALONE -DDEBUG -DFTS_WINDOWS -D_WIN32_WINNT=0x0601
  INCLUDES      += -I../../../code/thirdparty -I../../../code/thirdparty/imgui -I../../../code/thirdparty/glfw/include -I../../../code
  INCLUDES      +=
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m64
  ALL_CXXFLAGS  += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m64
  ALL_OBJCFLAGS += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -g -m64
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../bin/x64_debug/imgui -L../bin/x64_debug/net -L. -mwindows -m64
  LDDEPS        += ../bin/x64_debug/imgui/libimgui.a ../bin/x64_debug/imgui/libglfw.a ../bin/x64_debug/net/libnet.a
  LIBS          += $(LDDEPS) -lopengl32 -lws2_32 -lshcore
  EXTERNAL_LIBS +=
  LINKCMD        = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/code/remote_console/console.o \
	$(OBJDIR)/code/remote_console/game_browser.o \
	$(OBJDIR)/code/remote_console/game_info.o \
	$(OBJDIR)/code/remote_console/high_dpi_handler.o \
	$(OBJDIR)/code/remote_console/imgui_ext.o \
	$(OBJDIR)/code/remote_console/imgui_impl_glfw.o \
	$(OBJDIR)/code/remote_console/remote_console_main.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR         = ../build/x64/release/remote_console
  TARGETDIR      = ../bin/x64_release/TestMain
  TARGET         = $(TARGETDIR)/remote_console.exe
  DEFINES       += -DASIO_STANDALONE -DNDEBUG -DFTS_WINDOWS -D_WIN32_WINNT=0x0601
  INCLUDES      += -I../../../code/thirdparty -I../../../code/thirdparty/imgui -I../../../code/thirdparty/glfw/include -I../../../code
  INCLUDES      +=
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -O2 -m64
  ALL_CXXFLAGS  += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -O2 -m64
  ALL_OBJCFLAGS += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Wall -Wextra -O2 -m64
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../bin/x64_release/imgui -L../bin/x64_release/net -L. -s -mwindows -m64
  LDDEPS        += ../bin/x64_release/imgui/libimgui.a ../bin/x64_release/imgui/libglfw.a ../bin/x64_release/net/libnet.a
  LIBS          += $(LDDEPS) -lopengl32 -lws2_32 -lshcore
  EXTERNAL_LIBS +=
  LINKCMD        = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  OBJECTS := \
	$(OBJDIR)/code/remote_console/console.o \
	$(OBJDIR)/code/remote_console/game_browser.o \
	$(OBJDIR)/code/remote_console/game_info.o \
	$(OBJDIR)/code/remote_console/high_dpi_handler.o \
	$(OBJDIR)/code/remote_console/imgui_ext.o \
	$(OBJDIR)/code/remote_console/imgui_impl_glfw.o \
	$(OBJDIR)/code/remote_console/remote_console_main.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/code/remote_console \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) prebuild prelink $(TARGET) | $(TARGETDIR)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(EXTERNAL_LIBS) $(RESOURCES) | $(TARGETDIR) $(OBJDIRS)
	@echo Linking remote_console
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning remote_console
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

$(OBJDIR)/code/remote_console/console.o: ../../../code/remote_console/console.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/remote_console/game_browser.o: ../../../code/remote_console/game_browser.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/remote_console/game_info.o: ../../../code/remote_console/game_info.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/remote_console/high_dpi_handler.o: ../../../code/remote_console/high_dpi_handler.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/remote_console/imgui_ext.o: ../../../code/remote_console/imgui_ext.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/remote_console/imgui_impl_glfw.o: ../../../code/remote_console/imgui_impl_glfw.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/remote_console/remote_console_main.o: ../../../code/remote_console/remote_console_main.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
