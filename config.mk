# surf version
VERSION = 2.0

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man
LIBPREFIX = $(PREFIX)/lib
LIBDIR = $(LIBPREFIX)/surf

X11INC = `pkgconf --cflags x11`
X11LIB = `pkgconf --libs x11`

GTKINC = `pkgconf --cflags gtk+-3.0 gcr-3 webkit2gtk-4.0`
GTKLIB = `pkgconf --libs gtk+-3.0 gcr-3 webkit2gtk-4.0`
WEBEXTINC = `pkgconf --cflags webkit2gtk-4.0 webkit2gtk-web-extension-4.0`
WEBEXTLIBS = `pkgconf --libs webkit2gtk-4.0 webkit2gtk-web-extension-4.0`

# includes and libs
INCS = $(X11INC) $(GTKINC)
LIBS = $(X11LIB) $(GTKLIB) -lgthread-2.0

# flags
CPPFLAGS = -DVERSION=\"$(VERSION)\" -DWEBEXTDIR=\"$(LIBDIR)\" \
           -D_DEFAULT_SOURCE -DGCR_API_SUBJECT_TO_CHANGE
SURFCFLAGS = $(INCS) $(CPPFLAGS) -fPIC
WEBEXTCFLAGS = -fPIC $(WEBEXTINC)

# compiler
CC = cc
