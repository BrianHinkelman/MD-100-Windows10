Practice Lab: Configuring and Testing Name Resolution
=====================================================

 

Summary
-------

Name resolution is a critical part of your network infrastructure. You must
ensure that you have correctly configured the Windows 10 devices for name
resolution. Then you must test the name resolution process.

 

*Dependency Notice: Task 5 of this lab must be performed to be able to complete
an upcoming lab,* Configuring Internet Explorer Enterprise Mode.

 

Exercise 1: Testing Name Resolution
-----------------------------------

 

### Scenario

Your colleagues report repeatedly issues when trying to open web sites or
connect to services such as [www.adatum.com](http://www.adatum.com) or
intranet.adatum.com, which are both hosted on LON-CL1. You presume an issue with
the name resolution and conduct some testing, including checking the DNS
settings, clearing the DNS cache, and testing connections to LON-DC1.

 

 

### Task 1: Verify current DNS settings on the client

1.  Sign in to **LON-CL1** as **Adatum\\Administrator** with the password
    **Pa55w.rd**.

2.  Right-click **Start**, and then select **Windows PowerShell (Admin)**.

3.  At the Windows PowerShell command prompt, type **ipconfig /all** following
    and then press **Enter**.  
    *Note: DHCP should be enabled, and the IP address of the DHCP server
    displays. Notice the DNS server address.*

4.  At the Windows PowerShell command prompt, type **ping www** following and
    then press **Enter**.

5.  At the Windows PowerShell command prompt, type **ping intranet** following
    and then press **Enter**.

>   *Note: While the DNS server is correct, neither address is reachable.*

>    

### Task 2: View and clear the DNS resolver cache

1.  At the Windows PowerShell command prompt, type ipconfig /displaydns, and
    then press **Enter**. This displays the current DNS resolver cache. 

2.  At the Windows PowerShell command prompt, type Get-DnsClientCache, and then
    press **Enter**. This displays the current DNS resolver cache.

3.  At the Windows PowerShell command prompt, type ipconfig /flushdns, and then
    press **Enter**. This flushes the current DNS resolver cache.

4.  At the Windows PowerShell command prompt, type Clear-DnsClientCache, and
    then press **Enter**. This flushes the current DNS resolver cache.

>   *Note: It is not necessary to run this in addition to the preceding
>   command.*

1.  At the Windows PowerShell command prompt, type ipconfig /displaydns, and
    then press **Enter**. This verifies that you have no entries in the cache.

 

### Task 3: Test name resolution

1.  At the Windows PowerShell command prompt, type test-connection lon-dc1, and
    then press **Enter**.

2.  At the Windows PowerShell command prompt, type Get-DnsClientCache \| fl, and
    then press **Enter**.

3.  At the Windows PowerShell command prompt, type ipconfig /displaydns, and
    then press **Enter**.

>   *Note: This should display similar information to the preceding command.*

 

**Results**: After completing this exercise verified the DNS configuration of a
Windows device and tested name resolution.

 

 

Exercise 2: Testing Name Resolution
-----------------------------------

 

### Scenario

The user reports that LON-CL1 cannot get to
[www.adatum.com](http://www.adatum.com) or intranet.adatum.com. Your manager has
instructed you to add www to the hosts file with the lon-dc1 IP address, add
alias DNS record for intranet.adatum.com pointing to LON-DC1, and verify
functionality.

 

 

### Task 1: Create and test a hosts file entry

1.  At the Windows PowerShell command prompt, type notepad
    C:\\windows\\system32\\drivers\\etc\\hosts, and then press Enter.

2.  Scroll to the end of the file, type **172.16.0.10 www**, and then press
    **Enter**.

3.  Select **File**, and then select **Save**.

4.  Close Notepad.

5.  At the Windows PowerShell command prompt, type test-connection www, and then
    press **Enter**.

6.  At the Windows PowerShell command prompt, type Get-DnsClientCache \| fl, and
    then press **Enter**.

7.  View the www record in the cache.

8.  Leave PowerShell open.

>    

### Task 2: Add a DNS record 

1.  Sign in to **LON-DC1** as **Adatum\\Administrator** with the password
    **Pa55w.rd**.

2.  Launch **Server Manager** (if it's not already open).

3.  Select **Tools** in the top menu, then select **DNS**.

4.  Expand the **Forward Lookup Zones** folder and select **Adatum.com**.

5.  Click **Action** in the top menu, then select **New Alias (CNAME)**.

6.  In the Alias Name field, type **intranet**.

7.  In the Fully Qualified domain name (FQDN) field, type **lon-dc1.Adatum.com**
    and select **OK.**

8.  Switch to **LON-CL1**.

9.  In the PowerShell window, type nslookup intranet and press **Enter**.

10. Verify intranet.Adatum.com is resolving to lon-dc1.Adatum.com.

>    

### Task 3: Troubleshoot name resolution

1.  At the Windows PowerShell command prompt, type nslookup www, and then press
    **Enter**.

>   *Note: nslookup does not find the entry as it's only a host entry whereas
>   ping is working. To fix DNS issues, using hosts entries might only be a
>   local workaround.*

1.  At the Windows PowerShell command prompt, type nslookup LON-DC1, and then
    press **Enter**.

2.  At the Windows PowerShell command prompt, type Resolve-Dnsname LON-DC1 \|
    fl, and then press **Enter**.

3.  At the Windows PowerShell command prompt, type nslookup –debug LON-DC1 \>
    file.txt, and then press **Enter**.

4.  At the Windows PowerShell command prompt, type notepad file.txt, and then
    press **Enter**.

5.  Review the information. Note that you might have to scroll to the section
    starting with **Got answer**.

6.  What was the question that was asked of the DNS server?

    -   QUESTIONS: lon-dc1.Adatum.com, type = A, class = IN

7.  What was the response?

    -   ANSWERS: lon-dc1.Adatum.com

    -   internet address = 172.16.0.10

    -   ttl = 3600 (1 hour)

8.  How long will the record be cached?

    -   1 hour

9.  What is the fully qualified domain name (FQDN) for the primary name server?

    -   lon-dc1.Adatum.com

10. Close all open windows.

>    

**Results**: After completing this exercise you have added an entry in host
file, created a DNS record, and tested the name resolution in windows.
