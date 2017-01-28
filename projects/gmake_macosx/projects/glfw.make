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

MAKEFILE = glfw.make

ifeq ($(config),debug32)
  OBJDIR              = ../build/x32/debug/glfw
  TARGETDIR           = ../bin/x32_debug/imgui
  TARGET              = $(TARGETDIR)/libglfw.a
  DEFINES            += -D_GLFW_COCOA -DGLFW_USE_RETINA -DGLFW_USE_CHDIR -DGLFW_USE_MENUBAR -DDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m32
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/thirdparty/glfw/src/cocoa_time.o \
	$(OBJDIR)/code/thirdparty/glfw/src/context.o \
	$(OBJDIR)/code/thirdparty/glfw/src/init.o \
	$(OBJDIR)/code/thirdparty/glfw/src/input.o \
	$(OBJDIR)/code/thirdparty/glfw/src/monitor.o \
	$(OBJDIR)/code/thirdparty/glfw/src/vulkan.o \
	$(OBJDIR)/code/thirdparty/glfw/src/window.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../build/x32/release/glfw
  TARGETDIR           = ../bin/x32_release/imgui
  TARGET              = $(TARGETDIR)/libglfw.a
  DEFINES            += -D_GLFW_COCOA -DGLFW_USE_RETINA -DGLFW_USE_CHDIR -DGLFW_USE_MENUBAR -DNDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m32
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/thirdparty/glfw/src/cocoa_time.o \
	$(OBJDIR)/code/thirdparty/glfw/src/context.o \
	$(OBJDIR)/code/thirdparty/glfw/src/init.o \
	$(OBJDIR)/code/thirdparty/glfw/src/input.o \
	$(OBJDIR)/code/thirdparty/glfw/src/monitor.o \
	$(OBJDIR)/code/thirdparty/glfw/src/vulkan.o \
	$(OBJDIR)/code/thirdparty/glfw/src/window.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../build/x64/debug/glfw
  TARGETDIR           = ../bin/x64_debug/imgui
  TARGET              = $(TARGETDIR)/libglfw.a
  DEFINES            += -D_GLFW_COCOA -DGLFW_USE_RETINA -DGLFW_USE_CHDIR -DGLFW_USE_MENUBAR -DDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m64
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/thirdparty/glfw/src/cocoa_time.o \
	$(OBJDIR)/code/thirdparty/glfw/src/context.o \
	$(OBJDIR)/code/thirdparty/glfw/src/init.o \
	$(OBJDIR)/code/thirdparty/glfw/src/input.o \
	$(OBJDIR)/code/thirdparty/glfw/src/monitor.o \
	$(OBJDIR)/code/thirdparty/glfw/src/vulkan.o \
	$(OBJDIR)/code/thirdparty/glfw/src/window.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../build/x64/release/glfw
  TARGETDIR           = ../bin/x64_release/imgui
  TARGET              = $(TARGETDIR)/libglfw.a
  DEFINES            += -D_GLFW_COCOA -DGLFW_USE_RETINA -DGLFW_USE_CHDIR -DGLFW_USE_MENUBAR -DNDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m64
  LDDEPS             +=
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/thirdparty/glfw/src/cocoa_time.o \
	$(OBJDIR)/code/thirdparty/glfw/src/context.o \
	$(OBJDIR)/code/thirdparty/glfw/src/init.o \
	$(OBJDIR)/code/thirdparty/glfw/src/input.o \
	$(OBJDIR)/code/thirdparty/glfw/src/monitor.o \
	$(OBJDIR)/code/thirdparty/glfw/src/vulkan.o \
	$(OBJDIR)/code/thirdparty/glfw/src/window.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/code/thirdparty/glfw/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) prebuild prelink $(TARGET) | $(TARGETDIR)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(EXTERNAL_LIBS) $(RESOURCES) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving glfw
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
endif
	$(SILENT) $(LINKCMD) $(OBJECTS) 2>&1 > /dev/null | sed -e '/.o) has no symbols$$/d'
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning glfw
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

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

$(OBJDIR)/code/thirdparty/glfw/src/cocoa_time.o: ../../../code/thirdparty/glfw/src/cocoa_time.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/thirdparty/glfw/src/context.o: ../../../code/thirdparty/glfw/src/context.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/thirdparty/glfw/src/init.o: ../../../code/thirdparty/glfw/src/init.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/thirdparty/glfw/src/input.o: ../../../code/thirdparty/glfw/src/input.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/thirdparty/glfw/src/monitor.o: ../../../code/thirdparty/glfw/src/monitor.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/thirdparty/glfw/src/vulkan.o: ../../../code/thirdparty/glfw/src/vulkan.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/thirdparty/glfw/src/window.o: ../../../code/thirdparty/glfw/src/window.c $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
