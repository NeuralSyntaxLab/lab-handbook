This is under construction ..
# Implanting stimulation electrodes

This protocol details procedures for implanting two-wire stimulaion electrodes built with the Omnetics A9069-001 connector. It is possible that implanting other electrodes will require special adaptation of these procedures. Thus, we write these protocols in great detail while keeping in mind that these details may change in some projects. 

The protocol describes both acute and chronic implants. 

Additionally, some sections and steps in these surgical procedures have multiple alternatives (e.g. wire material, width, and coating). We therefore anticipate lab members will shape these procedures for their work. We mark actions that are strictly mandatory with :bangbang:.

## Pre-op procedures
An implant surgery is a full scale surgery even though it may take less than 1 hour for an experienced surgeon. Therefore, all pre-op steps appearing in the [general procedures](https://github.com/NeuralSyntaxLab/lab-handbook/blob/main/Surgical%20Procedures/general_surgical_procedures.md) apply.
Here we describe additional steps:

### Equipment and materials
**The following equipment is arranged and checked:**

*For implanting:*
* :bangbang: Electrodes to implant.
* :bangbang: The stimulation electrode is trimmed to the desired implant depth and its tips exposed. The electrode is tested by stimulating in water to show that bubbles are created due to hydrolysis.
* :bangbang: Electrode holder:
	- A simple holder of the complementary Omnetics connector (A9577-001) is used to fix the electrode if no stimulation is required during surgery.
	- A holder with wiring of the Omnetics A9577-001 connector is used when stimulation through the electrode is needed during the implantation (e.g. in acute stimulation)
	- A wired A9577-001 connector (without an added mechanical holding strut) is used when implantation is chronic but stimulation is required during the surgery after affixing the electrode the skull (e.g. for some antidromic identification procedures)

*For stimulating during the surgery (if needed):*
* :bangbang: PlexonStim stimulator system (Main box, cable, computer, screen), or similar.
* :bangbang: Oscilloscope + cables.

*For electrophysiological monitoring during the surgery (if needed):*
* :bangbang: An electrode (e.g. CaroboStar by Kation Scientific).
* :bangbang: A reference electrode (Ag+AgCl wire)
* :bangbang: Crocodile wires (coated copper wires with corcodiles at the ends).
* :bangbang: Electrode holder.
* :bangbang: Electrode pre-amplifier (A-M systems model 1800)
* :bangbang: Electrode Amplifier (A-M systems model 1800)
* :bangbang: Audio monitor (A-M systems model 3300)
* :bangbang: Oscilloscope

**The following materials are prepared:**
* Kwik-Sil elastomer.

## Procedures
The main procedures are covered in the [general procedures](https://github.com/NeuralSyntaxLab/lab-handbook/blob/main/Surgical%20Procedures/general_surgical_procedures.md). Here we describe the steps done after the animal is anesthetized, positioned in the stereotax, and after the zero head is found, the desired angle is set, and the stereotactic zero is set on the Lambda point:

* A thin strut (often a glass pipette in the electrode holder) is used to zero on Lambda.
* This pointer is used to locate implantation x,y coordinated in a desired head angle.
* :bangbang: [Craniotomy](https://github.com/NeuralSyntaxLab/lab-handbook/blob/main/Surgical%20Procedures/general_surgical_procedures.md#craniotomy) is performed in the desired locations.
	- For stimulation electrode implants.
	- For reference electrode recording (if needed).
* :bangbang: [Anchoring points](https://github.com/NeuralSyntaxLab/lab-handbook/blob/main/Surgical%20Procedures/general_surgical_procedures.md#creating-skull-anchors) are created in the skull for chronic implants.
* If needed, a circular craniotomy (diameter about 0.5mm) is performed above the cerebellum for inserting the ground reference of a recording reference electrode. 
* :bangbang: Saline-soaked Gel-Foam keeps the tissue irrigated.
* :bangbang: The stimulation electrode is mounted on the holder and the stereotax manipulator.
* If using a double-arm stereotax it is possible to mount the reference electrode with its holder on the other arm.
* If a stimulation or reference recording is expected then the cables are connected at this point to avoid mechanical manipulation when electrodes are close or within the brain.
* The stimulaion electrode is zeroed on Lambda (using one of its wires)
* :bangbang: The stimulaion electrode is brought to the desired craniotomy.
* If needed a [durotomy](https://github.com/NeuralSyntaxLab/lab-handbook/blob/main/Surgical%20Procedures/general_surgical_procedures.md#durotomy) is performed under each wire.
* :bangbang: The stimulation electrode is lowered and zero depth is set at the surface of the brain.
* :bangbang: The electrode is lowered slowly (about 100um/sec and no faster than 500um/sec) to about the top side of the target.
* :bangbang: A pause of 1 minute allows the tissue to settle.
* :bangbang: The electrode is lowered to it's final position.
* The electrode may be tested by measuring voltage and current during a bi-phasic stimulation pulse.

*If anchoring the stimulation electrode*
* Kwik-Sil is used to protect the brain around the electrode.
* Dental acrylic or bone cement is used to connect the electrode to the skull anchoring points.
* The surgeon waits to the hardening of the cement or hardens the acrylic.
* The electrode is gently separated from the holder while elevating the manipulator. 

*If stimulating and monitoring a reference electrode*
* The reference ground wire is inserted.
* Before stimulating, the isolation between the stimulatior's ground and the recording ground is tested.
	- If a low impedance is observed the stimulation current will not go into the brain.
* The reference electrode is zeroed on Lambda.
* The reference electrode is brought to the desired craniotomy.
* Durotomy is performed to allow electrode insertion.
* The reference electrode is lowered slowly (about 100um/sec and no faster than 500um/sec) to the target(s).
* Stimulation is carried while measurement is done with the reference electrode.
	- Grounds are kept apart by avoiding to connect the stimulator and the electrode amplifier to the same oscilloscope.

*If* **not** *anchoring the stimulation electrode*
* The electrode is extracted slowly (no faster than 500um/sec).
* The craniotomy is covered with Kwik-Sil and, if needed, with acrylic or cement.



