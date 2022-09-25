/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-HPET.aml, Sun Sep 25 11:37:10 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000093 (147)
 *     Revision         0x02
 *     Checksum         0xE9
 *     OEM ID           "CORP"
 *     OEM Table ID     "HPET"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20220331 (539099953)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "HPET", 0x00000000)
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

