QT = core gui qml quick dbus feedback

TEMPLATE = app
TARGET = fingerterm
DEPENDPATH += .
INCLUDEPATH += .
LIBS += -lutil

system($$PWD/updateversion.sh)

# Input
HEADERS += \
    ptyiface.h \
    terminal.h \
    textrender.h \
    version.h \
    util.h \
    keyloader.h \
    mainwindow.h \
    dbusadaptor.h
SOURCES += main.cpp terminal.cpp textrender.cpp \
    ptyiface.cpp \
    util.cpp \
    keyloader.cpp \
    mainwindow.cpp \
    dbusadaptor.cpp

OTHER_FILES += \
    qml/Main.qml \
    qml/Cover.qml \
    qml/Keyboard.qml \
    qml/Key.qml \
    qml/Lineview.qml \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    qml/Button.qml \
    qml/MenuFingerterm.qml \
    qml/NotifyWin.qml \
    qml/UrlWindow.qml \
    qml/LayoutWindow.qml

RESOURCES += \
    resources.qrc

unix:!symbian:!maemo5 {
    target.path = /usr/bin
    INSTALLS += target
}

maemo5 {
    target.path = /usr/bin
    INSTALLS += target
}

desktopfile.extra = cp $${TARGET}.desktop.nemo $${TARGET}.desktop
desktopfile.path = /usr/share/applications
desktopfile.files = $${TARGET}.desktop
INSTALLS += desktopfile
