#ifndef _MyEGT_H_
#define _MyEGT_H_

#include "simvarDefs.h"
#include "instrument.h"

class MyEGT : public instrument
{
private:
    SimVars* simVars;
    Aircraft loadedAircraft = UNDEFINED;
    float scaleFactor;

    // Instrument values (caclulated from variables and needed to draw the instrument)
    double egtAngle;
    double egtRefAngle = 62;
    double flowAngle;

public:
    MyEGT(int xPos, int yPos, int size);
    void render();
    void update();

private:
    void resize();
    void addVars();
};

#endif // _EGT_H
