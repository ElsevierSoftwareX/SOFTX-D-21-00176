_PlatformCommander_ is an open source package developed by 
the section ["Cognitive Psychology, Perception, and Research Methods"](https://www.kog.psy.unibe.ch/index_ger.html) 
of the department for psychology and the [Technology Platform for Research](https://www.tpf.philhum.unibe.ch/) 
of the Human Sciences Faculty of the University of Bern.
The software allows for controlling a [motion platform](https://www.kog.psy.unibe.ch/unibe/portal/fak_humanwis/philhum_institute/inst_psych/psy_kog/content/e48289/e65987/e965439/e965444/moog_ger.mp4) and to synchronize its motions with other in- and output devices.
A manuscript describing the current capabilities of _PlatformCommander_ can be found [here](https://gitlab.com/KWM-PSY/emulator/-/blob/master/PlatformCommander_0.9/docs/protocol_manual.pdf).

_PlatformCommander_ consists of multiple modules. The server connects to the Moog motion platform and manages the 
communication with it. 
Client applications connect to the server and send requests on what the platform should do.


How to get started:

**Server/Emulator**
The easiest way to test _PlatformCommander_ is setting up a test-environment using a [Raspberry Pi](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/?resellerType=home) or using a Linux PC running an emulator of 
the server. 
The emulator simulates the communication with a real motion platform and provides you visual feedback of the platform motion. Please note, that the Pi is not powerful enough for complex visual stimuli.
Once you have installed the server you can then use the Julia-client to interact with the Raspberry Pi.
You can learn more about the Server/Emulator and how to install it [here](https://gitlab.com/KWM-PSY/emulator).

**Client-Application**
Once you installed the emulator you connect to it via UDP. 
A client application written in Julia is part of _PlatformCommander_ and a good starting point. 
Most of the [test](https://gitlab.com/KWM-PSY/moog_com/-/tree/master/test) functions should work in combination with the emulator.
In order to use the provided client you need to install [Julia](https://julialang.org/). 
Furthermore, you need to download and install the following packages:

- [MOOG](https://gitlab.com/KWM-PSY/moog) (this package defines the messages ID that are implemented on the server and a call to a network socket implemented in C)
- [MoogCom](https://gitlab.com/KWM-PSY/moog_com) (this is the module that implements the communication with the server)
- [Exp_helper](https://gitlab.com/KWM-PSY/exp_helper) (this module defines functions and structures that support an efficient implementation of experiments)
- [Questionnaires](https://gitlab.com/KWM-PSY/questionnaires) (this module is thought to implement Questionnaires frequently used)


