_PlatformCommander_ is an open source package developed by 
the section ["Cognitive Psychology, Perception, and Research Methods"](https://www.kog.psy.unibe.ch/index_ger.html) 
of the department for psychology and the [Technology Platform for Research](https://www.tpf.philhum.unibe.ch/) 
of the Human Sciences Faculty of the University of Bern.
The software allows for controlling a [motion platform](https://www.kog.psy.unibe.ch/unibe/portal/fak_humanwis/philhum_institute/inst_psych/psy_kog/content/e48289/e65987/e965439/e965444/moog_ger.mp4) and to synchronize its motions with other in- and output devices.
The manual describing the current capabilities of _PlatformCommander_ can be found [here](https://gitlab.com/KWM-PSY/emulator/-/blob/master/PlatformCommander_0.9/docs/protocol_manual.pdf).

_PlatformCommander_ consists of multiple modules. The server connects to the Moog motion platform and manages the 
communication with it. 
Client applications connect to the server and send requests on what the platform should do.
-----------------------------------------------------------
**Videos**
- installation procedure >> https://tube.switch.ch/videos/szBEimBJzM
- reference experiments >> https://tube.switch.ch/videos/wYJPDMbzPj
- gui >> https://tube.switch.ch/videos/WCoJg4spvl
- joystick mode >> https://tube.switch.ch/videos/hGwHnu4acO
- visual stimuli subsystem >> https://tube.switch.ch/videos/rfkp777f0d
- GVS >>https://tube.switch.ch/videos/UjSUUcfQ1N
-----------------------------------------------------------
**FAQ**

https://gitlab.com/KWM-PSY/platform-commander/-/wikis/FAQ

-----------------------------------------------------------
**Required Hardware:**

At the moment _PlatformCommander_ has beed tested for a MOOG 6 DOF 2000E motion platform (Models 170E122, 170E131; Nov 12, 1999). Currently, we adapt the code for the support of the MB-E-6DOF/12/1800KG model (Dec 15, 2020).

A fully functional version of the server can be installed on hardware as thriftily as a Raspberry Pi 4 (https://www.raspberrypi.org/). 
In our lab an emulator version of the server installed on a raspberry pi is used for the implementation, testing and debugging of new experiments, the development of client-applications, and teaching purposes. 
However, experiments with complex 3D models consisting of a large number of triangles result in a poor frame-rate due to the limited GPU power.
For an optimal experience the server should be installed on a GNU/Linux-PC with sufficient performance, e.g. an Intel Celeron CPU or an Intel I5 CPU. 
The requirements regarding RAM and hard disk space are also relatively low. PlatformCommander runs fine with a minimum of 4 GB RAM. 
In total PlatformCommander and the GNU/Linux do use less than 5 GB, but in order to store the audio, video and GVS stimulus profiles as well as the log-files we recommend a 1 TB hard drive. 
If the hexapod is combined with VR-graphics, a modern video-card with at least 4 GB memory and a sufficient number of output-connectors (HDMI, DVI, etc.) for all needed screens and goggles is required. Please note that at this point PlatformCommander does only support NVIDIA graphic cards. 
Our server is equipped with a NVIDIA GeForce GTX 760 (https://www.nvidia.de/ gtx-700-graphics-cards/gtx-760/).
For interfacing peripheral analogue devices the server is also equipped with a multi-function measurement and control board (PCIe- DAS1602/16, Measurement Computing, https://www.mccdaq.com/ pci-data-acquisition/PCIe-DAS1602-16.aspx).

-----------------------------------------------------------
**How to get started**

**Server/Emulator**

The easiest way to test _PlatformCommander_ is setting up a test-environment using a [Raspberry Pi](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/?resellerType=home) or using a Linux PC running an emulator of 
the server. 
The emulator simulates the communication with a real motion platform and provides you visual feedback of the platform motion. Please note, that the Pi is not powerful enough for complex visual stimuli.
Once you have installed the server you can then use the Julia-client to interact with the Raspberry Pi.
You can learn more about the Server/Emulator and how to install it [here](https://gitlab.com/KWM-PSY/emulator).

**Client-Application**

Once you installed the emulator you connect to it via UDP. 
A client application written in Julia is part of _PlatformCommander_ and a good starting point. 
Most of the [test](https://gitlab.com/KWM-PSY/moogcom/-/tree/master/test) functions should work in combination with the emulator. Follow these [instructions](https://gitlab.com/KWM-PSY/julia_config) for the installation and setup of Julia.

-----------------------------------------------------------
**Supported Hardware**
_PlatformCommander_ has been used in combination with various VR-devices (HTC-VIVE, HTC-VIVE pro, HTC-VIVE pro2, Pimax Vision 8K X).

