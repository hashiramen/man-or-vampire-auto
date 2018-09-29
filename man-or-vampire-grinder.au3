#include <MsgBoxConstants.au3>
HotKeySet("{f2}", "StopGrind")

Global $AmountOfRuns = InputBox("How many runs do you want to do?", "", "")
Global $TimePerRun = InputBox("How long does it takes you to finish a run?(in minutes)", "", "")

Global $AppType = "BlueStacks"
Global $color = 0x4A4D4A
Global $autoBattleSleepTime = $TimePerRun * 1000 * 60


Grind()

Func Grind()
    Sleep(5000)
    WinActivate($AppType)
    Start()
EndFunc


Func Start()
    $variation = 1
    $left = 227
    $right = 1801
    $top = 63
    $bottom = 1018
    $isTimedOut = false

    $startTime = TimerInit()
    while($AmountOfRuns > 0)
        BeginCombat()
    WEnd
EndFunc

Func BeginCombat()
    $AmountOfRuns = $AmountOfRuns - 1
    Sleep(5000)
    Click(863, 766)

    Sleep(5000)
    Click(884, 524)

    Sleep(5000)
    Click(1000, 613)

    Sleep(20000)
    Click(189, 893)

    Sleep(5000)
    Click(850, 875)

    Sleep($autoBattleSleepTime)

    Click(841, 547)
    Sleep(6500)
EndFunc

Func Click($x, $y)
    MouseClick("left", $x, $y, 1, 1)
EndFunc

Func StopGrind()
    exit
EndFunc