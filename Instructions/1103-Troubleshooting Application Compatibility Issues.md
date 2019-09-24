# Practice Lab: 

## Summary
In this exercise, you will learn to use the Application Compatibility Toolkit to create a compatibility fix for an application that does not natively run on Windows 10. 

### Scenario
Benjamin has filed an incident report that states that the Stock Viewer application is not working after the upgrade to Windows 10. Your manager indicates that the application is not fully compatible with Windows 10, and that you should investigate if ACT can mitigate this, which is already installed on LON-CL1.


### Task 1: Identify compatibility issues 
1.  If necessary, sign in to **LON-CL1** as **Adatum\\Benjamin** with the
    password **Pa55w.rd**.
2.  On the desktop, on the taskbar, click the **File Explorer** icon.
3.  Navigate to **C:\\Program Files (x86)\\StockViewer**, and then double-click
    **StockViewer**.
4.  In the Permission denied dialog box, click **OK**.
5.  On the Stock Viewer toolbar, click **Trends**.
6.  In the Error dialog box, click **OK**.
7.  On the Tools menu, click **Options**.
8.  In the Stock Viewer dialog box, click **Continue**.
9.  On the Tools menu, click **Show Me a Star**.
10. In the Unsupported Version dialog box, click **OK**.
11. **Close** Stock Viewer.
12. If a Program Compatibility Assistant window opens, click **This program ran
    correctly**.
13. In the File Explorer window, right-click **StockViewer**, and then click
    **Run as administrator**.
14. In the User Account Control dialog box, provide the following credentials,
    and then click Yes:
-   User name: **Adatum\\Administrator**
-   Password: **Pa55w.rd**
15.  On the Stock Viewer toolbar, click **Trends**.
16.  On the Tools menu, click **Options**, and then click **OK**.
17.  On the Tools menu, click **Show Me a Star**, and then click **OK**.
18.  **Close** Stock Viewer, and then **sign out** of LON-CL1.

### Task 2: Create a compatibility fix 
1.  Sign in to **LON-CL1** as **Adatum\\Administrator** with the password
    **Pa55w.rd**.
2.  Click the Start button. In the list of apps, click **Windows Kits**, and
    then click **Compatibility Administrator (32bit)**.
3.  In the **Compatibility Administrator (32-bit) – New Database (1)
    [Untitled_1]** dialog box, right-click **New Database(1) [Untitled_1]**, and
    then click **Rename**.

4.  Type **AdatumACT**, and then press **Enter**.
5.  In the Compatibility Administrator window, right-click **AdatumACT
    [Untitled_1]\*,** click **Create New**, and then click **Application Fix**.
6.  In the Create New Application Fix Wizard, in the Name of the program to be
    fixed text box, type **StockViewer**.
7.  Click Browse.
8.  In the Find Binary window, browse to **C:\\Program Files
    (x86)\\StockViewer\\StockViewer.exe**, and then click **Open**.
9.  In the Create new Application Fix window, click **Next**.
10. On the Compatibility Modes page, select the **Run this program in
    compatibility mode** for check box, click the **drop-down list**, and then
    click **Windows XP**.
11. In the Additional compatibility modes section, scroll down, select the
    **RunAsAdmin** check box, and then click **Next**.
12. On the Compatibility Fixes page, click **Next**.
13. On the Matching Information page, click **Finish**.
14. In the Compatibility Administrator window, click **Save**.
15. In the Save Database window, browse to **c:\\**.
16. In the File name text box, type **AdatumACT**, and then click **Save**.
17. Close the Compatibility Administrator window.
18. **Sign out** of LON-CL1.

### Task 3: Test the compatibility fix 
1.  Sign in to **LON-CL1** as **Adatum\\Benjamin** with the password
    **Pa55w.rd**.
2.  Click **Start**, and type **cmd**, right-click on **Command Prompt**, and
    select **Run as Administrator**.
3.  In the User Account Control dialog box, enter the following credentials, and
    then click **Yes**:
- User name: **Adatum\\administrator**
- Password: **Pa55w.rd**
4.  At the command prompt, type the following command, and then press **Enter**:
` Sdbinst C:\\AdatumACT.sdb`
5.  On the desktop, on the taskbar, click the **File Explorer** icon.
6.  In File Explorer, navigate to **C:\\Program Files (x86)\\StockViewer** and
    then double-click **StockViewer**.
7.  In the User Account Control dialog box, enter the following credentials, and
    then click **Yes**:
- User name: **Adatum\\administrator**
- Password: **Pa55w.rd**
8.  On the Stock Viewer toolbar, click **Trends**.
9.  On the Tools menu, click **Options**.
10.  Click **OK** to close the message box.
11.  On the Tools menu, click **Show Me a Star**, and then click the star.
12.  **Close** the Stock Viewer application.
13.  If the Program Compatibility Assistant window opens, click **Yes**, this
    program worked correctly.
14.  **Sign out** of LON-CL1.

**Results**: After completing this exercise, you should have successfully resolved the issues with the Stock Viewer application.