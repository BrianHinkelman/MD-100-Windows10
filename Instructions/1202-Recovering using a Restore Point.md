# Practice Lab: Recovering using a Restore Point

## Summary

During this exercise you will learn how to recover a Windows device using a
Restore Point.

### Scenario

One your colleagues reports that after installing
\\\\lon-dc1\\labfiles\\apps\\XMLNotepad.msi and running \\\\lon-dc1\\labfiles\\Support\\ScenarioMouse.reg,
that his device is no longer responsive. You've decided to see if you can
reproduce the same circumstances on LON-CL3, but need to ensure that you can
return to a previous working state.

 

### Task 1: Configure System Restore

1.  Sign in to **LON-CL3** as **Adatum\\Administrator** with the password of
    **Pa55w.rd**.

2.  In LON-CL3, in File Explorer, in the navigation pane, right-click **This
    PC**, and then select **Properties**.

3.  In the System window, in the navigation pane, select **System protection**.

4.  In the **System Properties** dialog box, in the **Protection Settings**
    section, select **Local Disk (C:) (System)**, select **Configure**, select
    **Turn on system protection**, move the **Max Usage** slider between **5
    GB** and **10 GB**, and then select **OK** twice.

5.  Right-click **Start** and select **Windows PowerShell (Admin).**

6.  In the Administrator: PowerShell window type the following command and press
    **Enter:**

>   ´Checkpoint-Computer -Description "Lab Start"\`

1.  When complete, close the PowerShell Window.

2.  In the **Type here to search** box enter
    \\\\lon-dc1\\labfiles\\apps and press
    **Enter**.

3.  Double -click XMLNotepad.msi.

4.  In the XML Notepad 2007 Setup Wizard, select **Next**, select **I accept the
    terms in the License Agreement**, select **Next** twice, select **Install**,
    and then select **Finish**.

>   *Note: If an Internet Explorer 11 window opens, close Internet Explorer 11.*

1.  Right-click the desktop, point to **New**, select **Text Document**, type
    **My document** as its name, and then press Enter.

 

### Task 2: Simulate the Problem

1.  In File Explorer, navigate to the
    \\\\lon-dc1\\labfiles\\Support folder,
    and then double-click **ScenarioMouse.reg**

2.  At the UAC prompt to confirm changes in Registry Editor, select **Yes.
    select Yes to continue, then Ok.**

3.  Restart **LON-CL3**

 

### Task 3: Perform a System Restore

1.  After LON-CL3 has restarted:

>   **Note**: The mouse does not work.

1.  Sign in to **LON-CL3** as **Adatum\\Administrator** with the password of
    **Pa55w.rd**.

2.  Press the Start Button and type "Recovery". Highlight **Recovery Options**
    and press **Enter** to open.

3.  Under the Advanced Startup, highlight the **Restart now** button and press
    **Enter**.

4.  On the Choose an option page, highlight **Troubleshoot** and press
    **Enter**.

5.  On the troubleshoot page, highlight **Advanced Options** and press
    **Enter**.

6.  On the Advanced options page, highlight **System Restore** and press
    **Enter**.

>   **Note:** As mouse functions may be restored, you may be able to select on
>   options instead of the keyboard.

1.  On the System Restore page, with **Admin** highlighted, press E**nter**.
    Type **Pa55w.rd** for the password, and press **Enter**.

2.  On the Restore system files and settings page, select **Next**.

3.  On the System Restore window, select the **Lab Start** line and select
    **Scan for affected programs**.

4.  Note that XML Notepad 2007 will be deleted. Select **Close**.

5.  Select **Next**, then **Finish**, and then **Yes**.

6.  After the restore is complete, select **Restart**.

7.  Sign in to **LON-CL3** as **Adatum\\Administrator** with the password of
    **Pa55w.rd**.

8.  In the System Restore window select **Close.**

9.  Verify that the **My document** file is still on the desktop and that the
    XML Notepad 2007 shortcut is no longer present on the desktop.

 

**Results**: After completing this exercise, you should have successfully
recovered a device using a Restore Point.
