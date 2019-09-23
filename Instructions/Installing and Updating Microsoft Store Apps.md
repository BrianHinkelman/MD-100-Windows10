# Practice Lab: Installing and Updating Microsoft Store Apps


## Summary

In this lab you will learn how install and update Microsoft Store Apps.


### Scenario

Some users want to install specific Microsoft Store apps for their work. Before
allowing them to do so you want to test the download and update functionality of
the Microsoft App Store using the Microsoft To-Do app.

 

### Task 1: Enable Windows Update

1.  Sign in to **LON-CL1** as **adatum\\Administrator** with the password
    **Pa55w.rd**.

2.  Right-click **Start**, and then select **Windows PowerShell (Admin)**.

3.  In the **User Account Control** dialog box, click **Yes**.

4.  In the **Administrator: Windows PowerShell** window, type **the following
    command** and then press **Enter**.

>   Set-Service wuauserv -Startuptype Manual

>   *Note: For the lab setup, the Windows Update service is disabled. The above
>   command is not necessary to run in typical Windows 10 scenarios.*

1.  Sign out

>    

### Task 2: Configure app updates

1.  Sign in to LON-CL1 as Your first name + Last name’s first
    letterMD100\@outlook.com with your PIN or the password **Pa55w.rd123**.

2.  In the taskbar, select the **Microsoft Store** icon.

3.  In the **Store** app, select the the **See more** ellipsis symbol on the
    menu bar, and then select **Settings**.

4.  In **Settings**, under **App updates**, verify that **Update apps
    automatically** is set to Off.

5.  Select **Back**.

###  

### Task 3: Install an app

1.  In the Microsoft Store app, select **Search**, type **Microsoft To-Do**, and
    then select **Microsoft To-Do**.

2.  Select **Install**.  

>   *Note: If prompted by the Your account is missing some key info dialog box,
>   complete the information regarding Birthdate and Country/Region and select
>   Next.*

1.  If a **Try again later** dialog box appears, select **Close**.

2.  Wait for the installation to finish.

>    

### Task 4: Update and remove apps

1.  In the **Store** app, select the **See more** icon on the menu bar, and then
    select **Downloads and updates**.

2.  Notice that there are several apps waiting to be updated.

3.  Select **Update all**.

4.  After the updates start, select **Pause all**.

5.  Select the **X** for **Groove Music** to remove **Groove Music** from the
    update list.

6.  Select **Start**, right-click **Feedback Hub**, and then select
    **Uninstall**.

7.  In the **This app and its related info will be uninstalled** dialog box,
    select **Uninstall**.

8.  Sign out

 

**Results**: After completing this exercise, you will have installed a Microsoft
Store app and managed Microsoft Store app updates.
