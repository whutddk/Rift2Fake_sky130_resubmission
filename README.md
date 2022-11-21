# Caravel User Project: Rift2Chip 2330


## Attention

A Fake Code "LFSR16" and "Multiplier"is Uploaded.

### LFSR
A LFSR16 is instance, it will output four ramdom code in HEX to io. It will be connected to 7-segment seconds and display 4 numbers.
A IO can lock the LFSR, it will be connect to a switch.

### Multiplier
A Multiplier in Rift2Core is instance in 32-bits Mode. All ports are connected to la.
It's Boot4-WallceTree Multiplier.
--------------------------------------------


Based on Chisel3, Rift2Core is a 9-stage, dual-issue, out-of-order, 64-bits RISC-V Core, which supports RV64GC and M, S, U mode.

[RiftCore](https://github.com/whutddk/RiftCore) is the previous version of Rift2Core in Verilog.



----------------



## Rift To Go

Download Pre-compile Version [Here](https://github.com/whutddk/Rift2Core/releases), the newest status is as follows:


|Version|Test|Dhrystone|CoreMark|
|:----: |:--:|:-------:|:------:|
|Rift-2300|N/A|N/A|N/A|
|Rift-2310|N/A|N/A|N/A|
|Rift-2320|N/A|N/A|N/A|
|Rift-2330|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2330/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2330/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2330/coremark.json)|
|Rift-2340|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2340/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2340/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2340/coremark.json)|
|Rift-2350|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2350/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2350/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2350/coremark.json)|
|Rift-2360|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2360/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2360/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2360/coremark.json)|
|Rift-2370|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2370/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2370/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2370/coremark.json)|
|Rift-2380|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2380/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2380/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2380/coremark.json)|
|Rift-2390|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2390/isa.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2390/dhrystone.json)|![](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/whutddk/Rift2Core/gh_pages/generated/Debug/Rift2390/coremark.json)|




## API

Rift2Core is not only a highly configurable RISC-V CPU generator, but also provides configurable generation of submodules.

Search the provided API in the Scala Doc.

[API Here](https://whutddk.github.io/Rift2Core/ScalaDoc/api/index.html)

## Wiki

[Wiki in Chinese](https://bitbucket.org/whutddk/rift2core/wiki/browse/)

[Wiki in English(Comming Soon!)](https://bitbucket.org/whutddk/rift2core/wiki/browse/)



---------------------------------------

## Micro-Architecture

### FrontEnd

![FrontEnd](https://bitbucket.org/repo/o5MG4Eo/images/2424593958-rift%E5%89%8D%E7%AB%AF.png)

### BackEnd
![BackEnd](https://bitbucket.org/repo/o5MG4Eo/images/1540312579-rift%E5%90%8E%E7%AB%AF.png)


-----------------------------------------------
