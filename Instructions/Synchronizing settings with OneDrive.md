# Practice Lab: Synchronizing settings with OneDrive


## Summary

In this lab you will learn how to synchronize settings between devices using
OneDrive.

 

_Dependency Note: Task 1 in Exercise 1 must be completed (or an available
Microsoft ID) to perform additional labs later in this course._

 

### Scenario

Your users have a range of devices and they want to be able to use the same
Microsoft account to access all their devices. You must create a new Microsoft
account and connect it to a Windows 10 device.

You must enable and test the users’ ability to synchronize their Windows 10
settings between their devices. You have set up a test lab for this purpose.

 

### Task 1: Connect your Microsoft account

1.  Sign in to **LON-CL1** as **Adatum\\Administrator** with the password
    **Pa55w.rd**.

2.  Select **Start**, and then select the **Settings** icon.

3.  In the **Settings** app select **Accounts.**

4.  In the navigation pane select **Other users,** and then select **Add someone
    else to this PC.**

5.  In the **Microsoft account** window, select **I don't have this person's
    sign-in information**.

6.  In the **Microsoft account** window, select **Get a new email address**.

7.  Create a Microsoft account with the following values, and then select
    **Next**:

    -   New email: Your first name *+ L*ast name’s first letter + **MD100** (for example, KariTMD100)
    -   First name: Your first name
    -   Last name: Your last name
    -   Password: Pa55w.rd123
    -   Country/region: your country or region
    -   Birth month: January
    -   Birth day: 1
    -   Year: 1990

    _**Note**: If you select a country or region other than the United States, the
    birth date boxes do not appear. This is expected behavior, and you do not
    need to enter a birth date in this scenario._

6.  If the **Add Security Info** page appears, type your mobile phone number,
    and then select **Send code**. When you receive the code, type it in the
    **Enter the access code** box and select **Next**.

>   *Note: On the Add Security Info page, you must use your real mobile phone
>   number to receive the verification code.*

>   *Note: It will take a few minutes to create your profile.*

7.  **Sign out.**



### Task 2: Perform verification

1.  Sign in to **LON-CL1** as *Your first name + Last name’s first
    letter***MD100\@outlook.com** with the password **Pa55w.rd123**.

2.  On the **Create a PIN** page select **Next .**

3.  Enter a **4-digit PIN** that you will remember into both fields and select
    **OK.**

4.  On the **Backup your files with OneDrive** page, select **Next**.

5.  On the **Choose privacy settings for your device** page , select **Accept**.

6.  On the desktop right-click the empty space and select **Personalize.**

7.  Select **colors** and choose a different color.

8.  On the taskbar, select the **Mail** icon.

9.  In the **Mail** window, select **Add account**.

10. In the **Add an account** window, select the account just created.

11. On the **All done** page, select **Done**, and then select **Go to inbox**.

12. Acknowledge any prompts that may occur.

13.  Select **New mail** and send a test message to yourself, as follows:  

-   On the **To** line, type *Your first name + Last name’s first letter***MD100\@outlook.com**.  
-   On the Subject line, type **First test**.
-   In the body, type **This is my first test email**.
-   In the upper-right area, select **Send**.

14.  If the **Attention required** window appears, select **Dismiss**.


15. If you encounter a message that states, "Please sign in to your Outlook.com
    account", select **sign in** to validate the account. Complete any prompts
    to finish the process.

16. Switch to the Mail window. To the right of the Search box, select the **Sync
    this view** icon, which shows two arrows in a circle. Your test message
    should appear.

17. **Sign out**.

 

### Task 3: Sign in to LON-CL3 with your Microsoft account

1.  Switch to **LON-CL3**.

2.  Sign in to **LON-CL3** as **LON-CL3\\Admin** with the password **Pa55w.rd**.

3.  Select **Start**, and then select the **Settings** icon.

4.  In the **Settings** app select **Accounts**.

5.  In the navigation pane select **Other users**, and then select **Add someone
    else to this PC**.

6.  On the **How will this person sign in?** page, in the **Email or phone**
    box, type *Your first name + Last name’s first
    letter***MD100\@outlook.com,** and then select **Next**.

7.  On the **Good to go** page, select **Finish**.

8.  Close the **Settings** app.

9.  Select **Start**, select the **Admin** button, and then select *Your first
    name + Last name’s first letter***MD\@outlook.com**.

10. In the **Password** box, type **Pa55w.rd123**, and then press Enter.

>   *Note: It will take a few minutes to build the profile.*

1.  On the **Create a PIN** page select **Next**

2.  Enter a **4-digit PIN** that you will remember into both fields and select
    **OK**

3.  On the **Backup your files with OneDrive** page, select **Next**.

4.  On the **Choose privacy settings for your device** page , select **Accept**.



### Task 4: Perform verification

1.  On **LON-CL3**, on the taskbar, select the **Mail** icon.

2.  In the **Mail** window, select **Add account**.

3.  In the **Add an account** window, select the account just created.

4.  On the **All done** page, select **Done**, and then select **Go to inbox**.

5.  Acknowledge any prompts that may occur.

>   *Note: All your messages from the previous task on LON-CL1 should appear.*

1.  Open your test message, select **Reply**, add some text, and then click
    **Send**.

2.  Select Start and check if the color was changed.

3.  **Sign out**.



**Results**: After finishing this exercise, you will have setup OneDrive using a Microsoft account and successfully synchronized settings between different devices.
