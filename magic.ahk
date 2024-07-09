;looking south, max zoom

openBank(){
    PixelSearch, bankX, bankY, 0, 0, 1600, 900, 0x4441A0, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Random, randomClickBank, 10, 100
        newBankX := bankX + randomClickBank
        newBankY := bankY + randomClickBank
        MouseMove, newBankX, newBankY
        Click
        Sleep, 1500
    }
}

getDhideFromBank(){
    PixelSearch, dHideX, dHideY, 0, 0, 1600, 900, 0x5AFF5A, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Random, dHideClick, 5 ,25
        newdHideX := dHideX + dHideClick
        newdHideY := dHideY + dHideClick
        MouseMove, newdHideX ,newdHideY 
        Click
        Sleep, 100
    }
}

tanDhide(){

    PixelSearch, tanLeatherX, tanLeatherY, 0, 0, 1600, 900, 0x9A00FF, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Loop, 6
        {
            Random, tanClick, 5 ,30
            newtanLeatherX := tanLeatherX + tanClick
            newtanLeatherY := tanLeatherY + tanClick
            MouseMove, newtanLeatherX ,newtanLeatherY 
            Click
            Random, sleepDelay, 1000, 1500
            Sleep, sleepDelay
        }
    }
    Sleep, 100
}

F7::

    openBank()
    Sleep, 100
    getDhideFromBank()
    Sleep, 500
    Send {Esc}
    Sleep, 200
    tanDhide()
    /*
    openBank()

    */

F8::
    Reload
Return