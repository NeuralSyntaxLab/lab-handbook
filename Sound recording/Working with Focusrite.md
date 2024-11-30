## Overview
In the lab, we constantly record birds singing. This requires basic knowledge of the hardware in use, how to configure it correctly, and troubleshoot problems that might appear. 

Here, we will go over the different hardware in use with a primary focus on the **Focusrite Scarlett 18i20** sound card. We will also elaborate on how to configure it and connect it to a digital audio workstation (DAW), with **BoomRecorder** being our tool of choice.

---

## Hardware and Connectivity

The **Focusrite Scarlett 18i20** sound card allows the recording of multiple audio channels. It has 8 analog inputs, used in our case to connect microphones that capture birdsongs. Additionally, the 18i20 acts as an amplifier, providing 48V phantom power (in two groups of four) to the microphones.

### Key Features:

- **48V Power Supply**: The front panel has two 48V buttons labeled **1-4** and **5-8** for providing phantom power. These buttons should be turned off during the connection and disconnection of microphones.

- **Air Mode**: A digital effect mimicking the sound of an old preamp.

- **PAD**: Lowers the input by 10 dB (can also be done via software).

- **INST**: This button is relevant for jack inputs only (not XLR). When activated, it allows quieter instruments (e.g., an electroacoustic guitar) to be connected without requiring an amplifier. If off, the input is in **line mode**.

---

### Inputs and Controls

- **Inputs**: The device features **2 inputs** on the front and **6 on the back**. Each input supports both XLR and jack cables.
  
![image](https://github.com/user-attachments/assets/ad104cde-afa6-4b25-a180-40c8a26cb696)

- **Gain Control**: Each channel has a gain control knob and a gain monitoring bar.

- **Output Volume**: The output volume can be controlled for general connections or specific channels like headphones.

- **Line Outputs**: Line outputs can be used to monitor individual channels or all channels (e.g., line outputs 1,2).

- **Optical Outputs/Inputs**: These can be used to chain multiple sound cards together and increase the number of channels.

---

## Microphone Connection

To record the birds, we are using an omnidirectional condenser Lavalier microphone (**AT803, Audio–Technica**). 

The microphone comes with what's known as a **body pack** (see photos below). At its bottom (left image below), we can see two XLR connections:
- The **regular size XLR** (pink) connects the bodypack to the sound card.
- The **small size XLR** (green) connects to the microphone itself. 

On the side view (right image below), there is an **on/off /high pass filter** switch, where the straight line represents "on," and the high pass filter is above it.

<div style="display: inline-block;">
  <img src="https://github.com/user-attachments/assets/411f126f-2865-4c3e-ae86-f204a039c92e" alt="Bottom view" width="300"/>
  <img src="https://github.com/user-attachments/assets/bb6e63e7-d7a4-45a6-9f5d-ed1d2f8dbc5a" alt="Side view" width="300"/>
</div>

---
## The Focusrite Control software 
The Focusrite Control software is used to configure the sample rate, the routing between inputs and outputs, and the clock source, which is how a unit derives its digital clock.
in this part, i will elaborate on input/output routing and setting the clock source which will be useful for daisy chain of two Focusrite 18i20 such that overall we would be able to record 16 channels simoultenisuoly.
for more information please consult [this manual](https://github.com/user-attachments/files/17355472/Focusrite.Control.Scarlett.3rd.Gen.User.Guide_EN_0.pdf)


---
### Input/output routing
The Focusrite control software has two main tabs:
 - **input settings**: the window shows the eight analog channels of the Scarllet 18i20 where you can control the PAD or AIR function per each channel. On the side panel you can control the sample rate, clock source. also here you can enable the digital I/O mode. This setting will be used to configure how will the sound card be used: as a main sound card, or a slave input (see daisy chain part in this page).
![image](https://github.com/user-attachments/assets/f17557ab-01b3-4536-b049-83c376b88f7c)
- **output settings**: the window allows to choose which analog channel is routed to which output. here we can also route analog channels to digital output such that two 18i20 devices could be chained together. on the left side, an output channel is chosen, and on the right panel, the corresponding inputs are chosen. For instance, to hear all of the analog channels through the first and second headphone jacks in the front of the 18i20, we need to reroute all of the channels to outputs 1-2.
 ![image](https://github.com/user-attachments/assets/5c6f3cd7-7c51-4667-a515-c889dc8b9d6c)

----
- **output routing**
Here we will explain in depth how to assign, input channels, analogue or digital, to output channel that will be recognized by our DAW, BoomRecorder in our case.
on the output routing tab there are two rows, the top row is named hardware inputs, we will work only with this row. at the right most part of this row there is a button with a plus sign( see picture above), press it and a window with all of the possible inputs will appear at the left  (see picture below).
![Image](https://github.com/user-attachments/assets/ef6254eb-4069-4f29-8183-9c60b18509c4)


   
