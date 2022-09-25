/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (32-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-XOSI.aml, Sun Sep 25 11:37:17 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001A1 (417)
 *     Revision         0x02
 *     Checksum         0xF4
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "XOSI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20220331 (539099953)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "XOSI", 0x00001000)
{
    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x16)
            {
                "Windows 2000", 
                "Windows 2001", 
                "Windows 2001 SP1", 
                "Windows 2001.1", 
                "Windows 2001 SP2", 
                "Windows 2001.1 SP1", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013", 
                "Windows 2015", 
                "Windows 2016", 
                "Windows 2017", 
                "Windows 2017.2", 
                "Windows 2018", 
                "Windows 2018.2", 
                "Windows 2019", 
                "Windows 2020", 
                "Windows 2021", 
                "Windows 2022"
            }
        If (_OSI ("Darwin"))
        {
            Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}

