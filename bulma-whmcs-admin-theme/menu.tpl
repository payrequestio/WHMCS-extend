
<div class="navbar-start">



  



<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Clients" {if in_array("List Clients",$admin_perms)}href="#"{/if} title="Clients">
 <i class="fas fa-user"></i> &nbsp;&nbsp; {$_ADMINLANG.clients.title}</span></a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
 {if in_array("List Clients",$admin_perms)}<a class="navbar-item" id="Menu-Clients-View_Search_Clients" href="clients.php">{$_ADMINLANG.clients.viewsearch}</a>{/if}
 {if in_array("Add New Client",$admin_perms)}<a class="navbar-item" id="Menu-Clients-Add_New_Client" href="clientsadd.php">{$_ADMINLANG.clients.addnew}</a>{/if}
{if in_array("List Services",$admin_perms)}
<a class="navbar-item" id="Menu-Clients-Products_Services" href="clientshostinglist.php">{$_ADMINLANG.services.title}</a>
<a class="navbar-item" id="Menu-Clients-Products_Services-Shared_Hosting" href="clientshostinglist.php?listtype=hostingaccount">- {$_ADMINLANG.services.listhosting}</a>
<a class="navbar-item" id="Menu-Clients-Products_Services-Reseller_Accounts" href="clientshostinglist.php?listtype=reselleraccount">- {$_ADMINLANG.services.listreseller}</a>
<a class="navbar-item" id="Menu-Clients-Products_Services-VPS_Servers" href="clientshostinglist.php?listtype=server">- {$_ADMINLANG.services.listservers}</a>
<a class="navbar-item" id="Menu-Clients-Products_Services-Other_Services" href="clientshostinglist.php?listtype=other">- {$_ADMINLANG.services.listother}</a>

<hr class="navbar-divider">
  {if in_array("List Addons",$admin_perms)}<a class="navbar-item" id="Menu-Clients-Service_Addons" href="clientsaddonslist.php">{$_ADMINLANG.services.listaddons}</a>{/if}
    {if in_array("List Domains",$admin_perms)}<a class="navbar-item" id="Menu-Clients-Domain_Registration" href="clientsdomainlist.php">{$_ADMINLANG.services.listdomains}</a>{/if}
    {if in_array("View Cancellation Requests",$admin_perms)}<a class="navbar-item" id="Menu-Clients-Cancelation_Requests" href="cancelrequests.php">{$_ADMINLANG.clients.cancelrequests}</a>{/if}
    {if in_array("Manage Affiliates",$admin_perms)}<a class="navbar-item" id="Menu-Clients-Manage_Affiliates" href="affiliates.php">{$_ADMINLANG.affiliates.manage}</a>{/if}
    {if in_array("Mass Mail",$admin_perms)}<a class="navbar-item" id="Menu-Clients-Mass_Mail_Tool" href="massmail.php">{$_ADMINLANG.clients.massmail}</a>{/if}
     </div>
    {/if}
 
</div>



<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Orders" {if in_array("View Orders",$admin_perms)}href="#"{/if} title="Orders">
<i class="fas fa-shopping-cart"></i> &nbsp;&nbsp; {$_ADMINLANG.orders.title}</a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
    {if in_array("View Orders",$admin_perms)}<a class="navbar-item" id="Menu-Orders-List_All_Orders" href="orders.php">{$_ADMINLANG.orders.listall}</a>
<a class="navbar-item" id="Menu-Orders-Pending_Orders" href="orders.php?status=Pending">- {$_ADMINLANG.orders.listpending}</a>
<a class="navbar-item" id="Menu-Orders-Active_Orders" href="orders.php?status=Active">- {$_ADMINLANG.orders.listactive}</a>
<a class="navbar-item" id="Menu-Orders-Fraud_Orders" href="orders.php?status=Fraud">- {$_ADMINLANG.orders.listfraud}</a>
<a class="navbar-item" id="Menu-Orders-Cancelled_Orders" href="orders.php?status=Cancelled">- {$_ADMINLANG.orders.listcancelled}</a>{/if}
    {if in_array("Add New Order",$admin_perms)}<a class="navbar-item" id="Menu-Orders-Add_New_Order" href="ordersadd.php">{$_ADMINLANG.orders.addnew}</a>{/if}
    </div>
</div>


<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Billing" {if in_array("List Transactions",$admin_perms)}href="#"{/if} title="Billing"> <i class="fas fa-calculator"></i>  &nbsp;&nbsp;{$_ADMINLANG.billing.title}</span></a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
    {if in_array("List Transactions",$admin_perms)}<a class="navbar-item" id="Menu-Billing-Transactions_List" href="transactions.php">{$_ADMINLANG.billing.transactionslist}</a>{/if}
    {if in_array("List Invoices",$admin_perms)}
<a class="navbar-item" id="Menu-Billing-Invoices" href="invoices.php">{$_ADMINLANG.invoices.title}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Paid" href="invoices.php?status=Paid"> {$_ADMINLANG.status.paid}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Draft" href="invoices.php?status=Draft"> {$_ADMINLANG.status.draft}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Unpaid" href="invoices.php?status=Unpaid"> {$_ADMINLANG.status.unpaid}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Overdue" href="invoices.php?status=Overdue"> {$_ADMINLANG.status.overdue}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Cancelled" href="invoices.php?status=Cancelled"> {$_ADMINLANG.status.cancelled}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Refunded" href="invoices.php?status=Refunded"> {$_ADMINLANG.status.refunded}</a>
<a class="navbar-item" id="Menu-Billing-Invoices-Collections" href="invoices.php?status=Collections"> {$_ADMINLANG.status.collections}</a>
{/if}
    {if in_array("View Billable Items",$admin_perms)}<a class="navbar-item" id="Menu-Billing-Billable_Items" href="billableitems.php">{$_ADMINLANG.billableitems.title}</a>
<a class="navbar-item" id="Menu-Billing-Billable_Items-Uninvoiced_Items" href="billableitems.php?status=Uninvoiced">- {$_ADMINLANG.billableitems.uninvoiced}</a>
<a class="navbar-item" id="Menu-Billing-Billable_Items-Recurring_Items" href="billableitems.php?status=Recurring">- {$_ADMINLANG.billableitems.recurring}</a>
        {if in_array("Manage Billable Items",$admin_perms)}<a class="navbar-item" id="Menu-Billing-Billable_Items-Add_New" href="billableitems.php?action=manage"> {$_ADMINLANG.billableitems.addnew}</a>{/if}
{/if}
    {if in_array("Manage Quotes",$admin_perms)}<a class="navbar-item" id="Menu-Billing-Quotes" href="quotes.php">{$_ADMINLANG.quotes.title}</a>
<a class="navbar-item" id="Menu-Billing-Quotes-Valid" href="quotes.php?validity=Valid">- {$_ADMINLANG.status.valid}</a>
<a class="navbar-item" id="Menu-Billing-Quotes-Expired" href="quotes.php?validity=Expired">- {$_ADMINLANG.status.expired}</a>
 <a class="navbar-item" id="Menu-Billing-Quotes-Create_New_Quote" href="quotes.php?action=manage">- {$_ADMINLANG.quotes.createnew}</a>
      {/if}
    {if in_array("Offline Credit Card Processing",$admin_perms)}<a class="navbar-item" id="Menu-Billing-Offline_CC_Processing" href="offlineccprocessing.php">{$_ADMINLANG.billing.offlinecc}</a>{/if}
    {if in_array("View Gateway Log",$admin_perms)}<a class="navbar-item" id="Menu-Billing-Gateway_Log" href="gatewaylog.php">{$_ADMINLANG.billing.gatewaylog}</a>{/if}
    </div>
</div>


<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Support" {if in_array("Support Center Overview",$admin_perms)}href="#"{/if} title="Support"><i class="fas fa-comments"></i> &nbsp;&nbsp;{$_ADMINLANG.support.title}</a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
{if in_array("Support Center Overview",$admin_perms)}<a class="navbar-item" id="Menu-Support-Support_Overview" href="supportcenter.php">{$_ADMINLANG.support.supportoverview}</a>{/if}
{if in_array("Manage Announcements",$admin_perms)}<a class="navbar-item" id="Menu-Support-Announcements" href="supportannouncements.php">{$_ADMINLANG.support.announcements}</a>{/if}
{if in_array("Manage Downloads",$admin_perms)}<a class="navbar-item" id="Menu-Support-Downloads" href="supportdownloads.php">{$_ADMINLANG.support.downloads}</a>{/if}
{if in_array("Manage Knowledgebase",$admin_perms)}<a class="navbar-item" id="Menu-Support-Knowledgebase" href="supportkb.php">{$_ADMINLANG.support.knowledgebase}</a>{/if}
{if in_array("List Support Tickets",$admin_perms)}<a class="navbar-item" id="Menu-Support-Support_Tickets" href="supporttickets.php">{$_ADMINLANG.support.supporttickets}</a>
<a class="navbar-item" id="Menu-Support-Support_Tickets-Flagged_Tickets" href="supporttickets.php?view=flagged">- {$_ADMINLANG.support.flagged}</a>
<a class="navbar-item" id="Menu-Support-Support_Tickets-All_Active_Tickets" href="supporttickets.php?view=active">- {$_ADMINLANG.support.allactive}</a>
        {foreach $menuticketstatuses as $status}<a class="navbar-item" id="Menu-Support-Support_Tickets-{$status|replace:' ':'_'}" href="supporttickets.php?view={$status}"> {$status}</a>
        {/foreach}
{/if}
{if in_array("Open New Ticket",$admin_perms)}<a class="navbar-item" id="Menu-Support-Open_New_Ticket" href="supporttickets.php?action=open">{$_ADMINLANG.support.opennewticket}</a>{/if}
{if in_array("Manage Predefined Replies",$admin_perms)}<a class="navbar-item" id="Menu-Support-Predefined_Replies" href="supportticketpredefinedreplies.php">{$_ADMINLANG.support.predefreplies}</a>{/if}
    {if in_array("Manage Network Issues",$admin_perms)}<a class="navbar-item" id="Menu-Support-Network_Issues" href="networkissues.php">{$_ADMINLANG.networkissues.title}</a>
<a class="navbar-item" id="Menu-Support-Network_Issues-Open" href="networkissues.php"> {$_ADMINLANG.networkissues.open}</a>
<a class="navbar-item" id="Menu-Support-Network_Issues-Scheduled" href="networkissues.php?view=scheduled"> {$_ADMINLANG.networkissues.scheduled}</a>
<a class="navbar-item" id="Menu-Support-Network_Issues-Resolved" href="networkissues.php?view=resolved"> {$_ADMINLANG.networkissues.resolved}</a>
<a class="navbar-item" id="Menu-Support-Network_Issues-Create_New" href="networkissues.php?action=manage"> {$_ADMINLANG.networkissues.addnew}</a>
</div></div>
{/if}

<div class="navbar-item has-dropdown is-hoverable">
{if in_array("View Reports",$admin_perms)}<a class="navbar-link" id="Menu-Reports" title="Reports" href="#"><i class="far fa-chart-bar"></i>&nbsp;&nbsp; {$_ADMINLANG.reports.title}</a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
<a class="navbar-item" id="Menu-Reports-Daily_Performance" href="reports.php?report=daily_performance">Daily Performance</a>
<a class="navbar-item" id="Menu-Reports-Income_Forecast" href="reports.php?report=income_forecast">Income Forecast</a>
<a class="navbar-item" id="Menu-Reports-Annual_Income_Report" href="reports.php?report=annual_income_report">Annual Income Report</a>
<a class="navbar-item" id="Menu-Reports-New_Customers" href="reports.php?report=new_customers">New Customers</a>
<a class="navbar-item" id="Menu-Reports-Ticket_Feedback_Scores" href="reports.php?report=ticket_feedback_scores">Ticket Feedback Scores</a>
<a class="navbar-item" id="Menu-Reports-Batch_Invoice_PDF_Export" href="reports.php?report=pdf_batch">Batch Invoice PDF Export</a>
<a class="navbar-item" id="Menu-Reports-More..." href="reports.php">More...</a>
</div></div>
{/if}


<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Utilities" title="Utilities" href="#"><i class="far fa-file-alt"></i> &nbsp;&nbsp;  {$_ADMINLANG.utilities.title} </span></a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
    {if in_array("Update WHMCS",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Update" href="update.php">{$_ADMINLANG.update.title}</a>{/if}
    {if in_array("WHMCSConnect",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-WHMCS_Connect" href="whmcsconnect.php">{$_ADMINLANG.whmcsConnect.whmcsConnectName}</a>{/if}
    {if in_array("View Module Queue", $admin_perms)}<a class="navbar-item" id="Menu-Utilities-Module_Queue" href="modulequeue.php">{$_ADMINLANG.utilities.moduleQueue}</a>{/if}
    {if in_array("Email Marketer",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Email_Marketer" href="utilitiesemailmarketer.php">{$_ADMINLANG.utilities.emailmarketer}</a>{/if}
    {if in_array("Link Tracking",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Link_Tracking" href="utilitieslinktracking.php">{$_ADMINLANG.utilities.linktracking}</a>{/if}
    {if in_array("Calendar",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Calendar" href="calendar.php">{$_ADMINLANG.utilities.calendar}</a>{/if}
    {if in_array("To-Do List",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-To-Do_List" href="todolist.php">{$_ADMINLANG.utilities.todolist}</a>{/if}
    {if in_array("WHOIS Lookups",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-WHOIS_Lookups" href="whois.php">{$_ADMINLANG.utilities.whois}</a>{/if}
    {if in_array("Domain Resolver Checker",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Domain_Resolver" href="utilitiesresolvercheck.php">{$_ADMINLANG.utilities.domainresolver}</a>{/if}
    {if in_array("View Integration Code",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Integration_Code" href="systemintegrationcode.php">{$_ADMINLANG.utilities.integrationcode}</a>{/if}
    {if in_array("WHM Import Script",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-cPanel_WHM_Import" href="whmimport.php">{$_ADMINLANG.utilities.cpanelimport}</a>{/if}
    {if in_array("Automation Status", $admin_perms) || in_array("Database Status", $admin_perms) || in_array("System Cleanup Operations", $admin_perms) || in_array("View PHP Info", $admin_perms)}<li class="expand"><a class="navbar-item" id="Menu-Utilities-System" href="#">{$_ADMINLANG.utilities.system}</a>
        {if in_array("Automation Status", $admin_perms)}<a class="navbar-item" id="Menu-Utilities-System-Automation_Status" href="automationstatus.php">{$_ADMINLANG.utilities.automationStatus}</a>{/if}
        {if in_array("Database Status",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-System-Database_Status" href="systemdatabase.php">{$_ADMINLANG.utilities.dbstatus}</a>{/if}
        {if in_array("System Cleanup Operations",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-System-System_Cleanup" href="systemcleanup.php">{$_ADMINLANG.utilities.syscleanup}</a>{/if}
        {if in_array("View PHP Info",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-System-PHP_Info" href="systemphpinfo.php">{$_ADMINLANG.utilities.phpinfo}</a>{/if}
        {if in_array("View PHP Info",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-System-PhpCompat" href="{routePath('admin-utilities-system-phpcompat')}">{$_ADMINLANG.utilities.phpcompat}</a>{/if}
    {/if}
    {if in_array("View Activity Log",$admin_perms) || in_array("View Admin Log",$admin_perms) || in_array("View Module Debug Log",$admin_perms) || in_array("View Email Message Log",$admin_perms) || in_array("View Ticket Mail Import Log",$admin_perms) || in_array("View WHOIS Lookup Log",$admin_perms)}<li class="expand"><a class="navbar-item" id="Menu-Utilities-Logs" href="#">{$_ADMINLANG.utilities.logs}</a>
        {if in_array("View Activity Log",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Logs-Activity_Log" href="systemactivitylog.php">{$_ADMINLANG.utilities.activitylog}</a>{/if}
        {if in_array("View Admin Log",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Logs-Admin_Log" href="systemadminlog.php">{$_ADMINLANG.utilities.adminlog}</a>{/if}
        {if in_array("View Module Debug Log",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Logs-Module_Log" href="systemmodulelog.php">{$_ADMINLANG.utilities.modulelog}</a>{/if}
        {if in_array("View Email Message Log",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Logs-Email_Message_Log" href="systememaillog.php">{$_ADMINLANG.utilities.emaillog}</a>{/if}
        {if in_array("View Ticket Mail Import Log",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Logs-Ticket_Email_Import_Log" href="systemmailimportlog.php">{$_ADMINLANG.utilities.ticketmaillog}</a>{/if}
        {if in_array("View WHOIS Lookup Log",$admin_perms)}<a class="navbar-item" id="Menu-Utilities-Logs-WHOIS_Lookup_Log" href="systemwhoislog.php">{$_ADMINLANG.utilities.whoislog}</a>{/if}
    {/if}
</div></div>


<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Addons" title="Addons" href="addonmodules.php"> &nbsp;&nbsp;   <i class="fas fa-cube"></i> {$_ADMINLANG.utilities.addonmodules} </a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
        {foreach from=$addon_modules key=module item=displayname}
            <a class="navbar-item" id="Menu-Addons-{$displayname}" href="addonmodules.php?module={$module}">{$displayname}</a>
        {foreachelse}
            <a class="navbar-item" id="Menu-Addons-Marketplace-Link" class="autoLinked" href="https://marketplace.whmcs.com">Visit WHMCS Marketplace</a>
        {/foreach}
        </div></div>


<div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Setup" title="Setup" href="#"> &nbsp;&nbsp;   <i class="fas fa-cog"></i> {$_ADMINLANG.setup.title}</a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
    {if in_array("Configure General Settings",$admin_perms)}<a class="navbar-item" id="Menu-Setup-General_Settings" href="configgeneral.php">{$_ADMINLANG.setup.general}</a>{/if}
    {if in_array("Configure Sign-In Integration",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Sign-In_Integrations" href="{routePath('admin-setup-authn-view')}">{$_ADMINLANG.setup.signInIntegrations}</a>{/if}
    {if in_array("Configure Automation Settings",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Automation_Settings" href="configauto.php">{$_ADMINLANG.setup.automation}</a>{/if}
    {if in_array("Manage MarketConnect",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Manage_MarketConnect" href="marketconnect.php">{$_ADMINLANG.setup.marketconnect}</a>{/if}
    {if in_array("Manage Notifications",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Notifications" href="{routePath('admin-setup-notifications-overview')}">{$_ADMINLANG.notifications.title}</a>{/if}
{if in_array("Configure Administrators",$admin_perms) || in_array("Configure Admin Roles",$admin_perms) || in_array("Configure Two-Factor Authentication",$admin_perms) || in_array("Manage API Credentials",$admin_perms)}
<a class="navbar-item" id="Menu-Setup-Staff_Management" href="#">{$_ADMINLANG.setup.staff}</a>
        {if in_array("Configure Administrators",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Staff_Management-Administrator_Users" href="configadmins.php">{$_ADMINLANG.setup.admins}</a>{/if}
        {if in_array("Configure Admin Roles",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Staff_Management-Administrator_Roles" href="configadminroles.php">{$_ADMINLANG.setup.adminroles}</a>{/if}
        {if in_array("Configure Two-Factor Authentication",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Staff_Management-Two-Factor_Authentication" href="configtwofa.php">{$_ADMINLANG.setup.twofa}</a>{/if}
        {if in_array("Manage API Credentials",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Staff_Management-API_Credentials" href="configapicredentials.php">{$_ADMINLANG.setup.apicredentials}</a>{/if}
    {else}
    <a class="navbar-item" id="Menu-Setup-Staff_Management-My_Account" href="myaccount.php">{$_ADMINLANG.global.myaccount}</a>{/if}
{if in_array("Configure Currencies",$admin_perms) || in_array("Configure Payment Gateways",$admin_perms) || in_array("Configure Tax Setup",$admin_perms) || in_array("View Promotions",$admin_perms)}
<a class="navbar-item" id="Menu-Setup-Payments" href="#">{$_ADMINLANG.setup.payments}</a>
        {if in_array("Configure Currencies",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Payments-Currencies" href="configcurrencies.php">{$_ADMINLANG.setup.currencies}</a>{/if}
        {if in_array("Configure Payment Gateways",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Payments-Payment_Gateways" href="configgateways.php">{$_ADMINLANG.setup.gateways}</a>{/if}
        {if in_array("Configure Tax Setup",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Payments-Tax_Rules" href="configtax.php">{$_ADMINLANG.setup.tax}</a>{/if}
        {if in_array("View Promotions",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Payments-Promotions" href="configpromotions.php">{$_ADMINLANG.setup.promos}</a>{/if}
    {/if}
{if in_array("View Products/Services",$admin_perms) || in_array("Configure Product Addons",$admin_perms) || in_array("Configure Product Bundles",$admin_perms) || in_array("Configure Domain Pricing",$admin_perms) || in_array("Configure Domain Registrars",$admin_perms) || in_array("Configure Servers",$admin_perms)}
    <li class="expand"><a class="navbar-item" id="Menu-Setup-Products_Services" href="#">{$_ADMINLANG.setup.products}</a>
        {if in_array("View Products/Services",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Products_Services" href="configproducts.php">{$_ADMINLANG.setup.products}</a>{/if}
        {if in_array("View Products/Services",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Configurable_Options" href="configproductoptions.php">{$_ADMINLANG.setup.configoptions}</a>{/if}
        {if in_array("Configure Product Addons",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Product_Addons" href="configaddons.php">{$_ADMINLANG.setup.addons}</a>{/if}
        {if in_array("Configure Product Bundles",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Product_Bundles" href="configbundles.php">{$_ADMINLANG.setup.bundles}</a>{/if}
        {if in_array("Configure Domain Pricing",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Domain_Pricing" href="configdomains.php">{$_ADMINLANG.setup.domainpricing}</a>{/if}
        {if in_array("Configure Domain Registrars",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Domain_Registrars" href="configregistrars.php">{$_ADMINLANG.setup.registrars}</a>{/if}
        {if in_array("Configure Servers",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Products_Services-Servers" href="configservers.php">{$_ADMINLANG.setup.servers}</a>{/if}
    {/if}
{if in_array("Configure Support Departments",$admin_perms) || in_array("Configure Ticket Statuses",$admin_perms) || in_array("Configure Support Departments",$admin_perms) || in_array("Configure Spam Control",$admin_perms)}
<a class="navbar-item" id="Menu-Setup-Support" href="#">{$_ADMINLANG.support.title}</a>
        {if in_array("Configure Support Departments",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Support-Support_Departments" href="configticketdepartments.php">{$_ADMINLANG.setup.supportdepartments}</a>{/if}
        {if in_array("Configure Ticket Statuses",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Support-Ticket_Statuses" href="configticketstatuses.php">{$_ADMINLANG.setup.ticketstatuses}</a>{/if}
        {if in_array("Configure Support Departments",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Support-Escalation_Rules" href="configticketescalations.php">{$_ADMINLANG.setup.escalationrules}</a>{/if}
        {if in_array("Configure Spam Control",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Support-Spam_Control" href="configticketspamcontrol.php">{$_ADMINLANG.setup.spam}</a>{/if}
    {/if}
    {if in_array("Configure Application Links",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Application_Links" href="configapplinks.php">{$_ADMINLANG.setup.applicationLinks}</a>{/if}
    {if in_array("Configure OpenID Connect",$admin_perms)}<a class="navbar-item" id="Menu-Setup-OpenID_Connect" href="configopenid.php">{$_ADMINLANG.setup.openIdConnect}</a>{/if}
    {if in_array("View Email Templates",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Email_Templates" href="configemailtemplates.php">{$_ADMINLANG.setup.emailtpls}</a>{/if}
    {if in_array("Configure Addon Modules",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Addons_Modules" href="configaddonmods.php">{$_ADMINLANG.setup.addonmodules}</a>{/if}
    {if in_array("Configure Client Groups",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Client_Groups" href="configclientgroups.php">{$_ADMINLANG.setup.clientgroups}</a>{/if}
    {if in_array("Configure Custom Client Fields",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Custom_Client_Fields" href="configcustomfields.php">{$_ADMINLANG.setup.customclientfields}</a>{/if}
    {if in_array("Configure Fraud Protection",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Fraud_Protection" href="configfraud.php">{$_ADMINLANG.setup.fraud}</a>{/if}
{if in_array("Configure Order Statuses",$admin_perms) || in_array("Configure Security Questions",$admin_perms) || in_array("View Banned IPs",$admin_perms) || in_array("Configure Banned Emails",$admin_perms) || in_array("Configure Database Backups",$admin_perms)}
<a class="navbar-item" id="Menu-Setup-Other" href="#">{$_ADMINLANG.setup.other}</a>
        {if in_array("Configure Order Statuses",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Other-Order_Statuses" href="configorderstatuses.php">{$_ADMINLANG.setup.orderstatuses}</a>{/if}
        {if in_array("Configure Security Questions",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Other-Security_Questions" href="configsecurityqs.php">{$_ADMINLANG.setup.securityqs}</a>{/if}
        {if in_array("View Banned IPs",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Other-Banned_IPs" href="configbannedips.php">{$_ADMINLANG.setup.bannedips}</a>{/if}
        {if in_array("Configure Banned Emails",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Other-Banned_Emails" href="configbannedemails.php">{$_ADMINLANG.setup.bannedemails}</a>{/if}
        {if in_array("Configure Database Backups",$admin_perms)}<a class="navbar-item" id="Menu-Setup-Other-Database_Backups" href="configbackups.php">{$_ADMINLANG.setup.backups}</a>{/if}
    {/if}
  </div></div>



  <div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link" id="Menu-Help" title="Help" href="#"> &nbsp;&nbsp;    <i class="far fa-life-ring"></i> {$_ADMINLANG.help.title}  </a>
<div class="navbar-dropdown is-hidden-mobile is-boxed">
    <a class="navbar-item" id="Menu-Help-Documentation" href="http://docs.whmcs.com/" target="_blank">{$_ADMINLANG.help.docs}</a>
    {if in_array("Main Homepage",$admin_perms)}<a class="navbar-item" id="Menu-Help-License_Information" href="{routePath('admin-help-license')}">{$_ADMINLANG.help.licenseinfo}</a>{/if}
    {if in_array("Configure Administrators",$admin_perms)}<a class="navbar-item" id="Menu-Help-Change_License_Key" href="licenseerror.php?licenseerror=change">{$_ADMINLANG.help.changelicense}</a>{/if}
    {if in_array("Health and Updates", $admin_perms)}
        
            <a class="navbar-item" id="Menu-Help-Check_Health_Updates" href="systemhealthandupdates.php">
                {$_ADMINLANG.healthCheck.menuTitle}
            </a>
        
    {/if}
    {if in_array("View What's New",$admin_perms)}
        
            <a class="navbar-item" id="Menu-Help-Whats_New" href="javascript:openFeatureHighlights()">
                {$_ADMINLANG.whatsNew.menuTitle}
            </a>
        
    {/if}
    {if in_array("Configure General Settings",$admin_perms)}
        <a class="navbar-item" id="Menu-Help-Setup_Wizard" href="#" onclick="openSetupWizard();return false;">{$_ADMINLANG.help.setupWizard}</a>
        <a class="navbar-item" id="Menu-Help-Get_Help" href="systemsupportrequest.php">{$_ADMINLANG.help.support}</a>
    {/if}
    <a class="navbar-item" id="Menu-Help-Community_Forums" href="https://whmcs.community/?utm_source=InApp&utm_medium=Help_Menu" target="_blank">{$_ADMINLANG.help.forums}</a>
 </div></div>
