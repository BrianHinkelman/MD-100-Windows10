# Practice Lab: Using EFS


## Summary

In this exercise, you will create a folder and configure it to encrypt files
placed inside it. You then will create a file, and verify that it is encrypted
so that other users are unable to access its contents.

 

### Scenario

Beth and Bill work different days at the same office. They share a desk and a
computer, LON-CL1. Beth works on sensitive information to which Bill should not
have access. Therefore, you have instructed Beth to create a folder, and you
will encrypt the contents so that only she can access its contents.


### Task 1: Create a data folder and configure folder view options

1.  Sign in to **LON-CL1** as **Adatum\\Beth** with the password **Pa55w.rd**.

2.  Select the **File Explorer** icon on the taskbar.

3.  In File Explorer, in the navigation pane, expand **This PC,** and then
    select **Allfiles (E:)**. In the details pane, right-click the **empty
    space** select **New**, select **Folder**, and type **SecretBeth** as the
    new folder name.

4.  In File Explorer select the **View** tab and then select **Options**.

5.  In the **Folder Options** window, select **View**.

6.  In the **Advanced settings** list, select the **Show encrypted or compressed
    NTFS files in color** check box.

7.  Select **OK**.

 

### Task 2: Encrypt the folder

1.  Right-click the **SecretBeth** folder, and then select **Properties**.

2.  Select **Advanced**.

3.  On the **Advanced Attributes** dialog box, select the **Encrypt contents to
    secure data** check box.

4.  Select **OK** twice.

5.  Verify that the **SecretBeth** folder appears in green.

6.  Double-click the **SecretBeth** folder.

7.  Right-click the empty space and select **New**, and then select **Text
    Document**.

8.  Name the new file **Secrets**, and then double-click the file to open it in
    Notepad.

9.  Enter the following text:

    -   **This is a secret file**.

10. Close Notepad, and then when prompted, select **Save**.

11. Sign out.



Task 3: Test access to the folder

1.  Sign in to LON-CL1 as **ADATUM\\Bill** with the password **Pa55w.rd**.

2.  Select the File **Explorer icon** on the taskbar.

3.  In File Explorer, in the navigation pane, expand **This PC**, expand
    **Allfiles (E:)** and then select **SecretBeth**.

4.  Double-click the **Secrets file**.

5.  Verify that **Access is denied**, and then select **OK**. Close Notepad.

6.  Sign out.



**Results**: After completing this exercise, you should have encrypted locally
stored data using EFS.
