DefinitionBlock ("", "SSDT", 2, "CORP", "SSDTHPET", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.HPET, DeviceObj)
    External (HPEN, FieldUnitObj)

    Name (\_SB.PCI0.HPET._CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
        IRQNoFlags ()
            {0,8,11}
        Memory32Fixed (ReadWrite,
            0xFED00000,         // Address Base
            0x00000400,         // Address Length
            )
    })
    Method (_INI, 0, NotSerialized)  // _INI: Initialize
    {
        If (_OSI ("Darwin"))
        {
            \HPEN = One
        }
    }
}

