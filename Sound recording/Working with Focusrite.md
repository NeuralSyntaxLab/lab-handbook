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

The microphone comes with what's known as a **body pack** (see photos below). At its bottom, we can see two XLR connections:
- The **regular size XLR** (pink) connects the bodypack to the sound card.
- The **small size XLR** (green) connects to the microphone itself. 

On the side view, there is an **on/off /high pass filter** switch, where the straight line represents "on," and the high pass filter is above it.

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
