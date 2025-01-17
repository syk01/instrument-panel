echo Building instrument-panel
cd instrument-panel
g++ -o instrument-panel -I . -I instruments \
    simvarDefs.cpp \
    simvars.cpp \
    globals.cpp \
    knobs.cpp \
    instrument.cpp \
    instruments/adf.cpp \
    instruments/adi.cpp \
    instruments/alt.cpp \
    instruments/annunciator.cpp \
    instruments/asi.cpp \
    instruments/digitalClock.cpp \
    instruments/egt.cpp \
    instruments/fuel.cpp \
    instruments/hi.cpp \
    instruments/nav.cpp \
    instruments/oil.cpp \
    instruments/radCom.cpp \
    instruments/rpm.cpp \
    instruments/tc.cpp \
    instruments/trimFlaps.cpp \
    instruments/vac.cpp \
    instruments/vor1.cpp \
    instruments/vor2.cpp \
    instruments/vsi.cpp \
    instrument-panel.cpp \
    instruments/alternate/altFast.cpp \
    instruments/alternate/asiFast.cpp \
    instruments/alternate/asiSupersonic.cpp \
    instruments/alternate/gForce.cpp \
    instruments/alternate/rpmPercent.cpp \
    instruments/alternate/vsiExtreme.cpp \
    instruments/learjet/adiLearjet.cpp \
    instruments/savageCub/asiSavageCub.cpp \
    instruments/savageCub/rpmSavageCub.cpp \
    instruments/savageCub/comSavageCub.cpp \
    instruments/savageCub/xpdrSavageCub.cpp \
    instruments/spitfire/asiSpitfire.cpp \
    instruments/spitfire/rpmSpitfire.cpp \
    instruments/spitfire/vsiSpitfire.cpp \
    instruments/spitfire/boostSpitfire.cpp \
    -lwiringPi -lpthread -lallegro -lallegro_image -lallegro_font || exit
echo fs-restart
fs-restart
echo Done
