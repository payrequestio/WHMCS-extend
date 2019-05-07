<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="{$charset}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>WHMCS - {$pagetitle}</title>


    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
    <link href="templates/{$template}/css/all.min.css?v={$versionHash}" rel="stylesheet" />
    <script type="text/javascript" src="templates/{$template}/js/scripts.min.js?v={$versionHash}"></script>
    <script>
        var datepickerformat = "{$datepickerformat}",
            csrfToken="{$csrfToken}",
            adminBaseRoutePath = "{\WHMCS\Admin\AdminServiceProvider::getAdminRouteBase()}";
            whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}";
        {if $jquerycode}
            $(document).ready(function(){ldelim}
                {$jquerycode}
            {rdelim});
        {/if}
        {if $jscode}
            {$jscode}
        {/if}
    </script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">

    {$headeroutput}

<style>
 /* Fix search position */
.intellisearch {
margin: 15px 20px !important;
}

.section {
padding: 1rem 1.5rem !important;
}
/* Remove WHMCS blue background */
body {
background-color: white !important;
}

.contentarea {
background-color: white !important;
}


/* Fixing bootstrap conflicts */
.navbar-brand {
float: none !important;
height: 0px !important;
padding: 0px 0px !important;
font-size: 18px !important;
line-height: 0px !important;
}

body {
font-size: 14px !important;
}

.contentarea {
border: 2px solid #e2e7e9 !important;
}

td, th {
text-align: unset !important;
}

.pull-right {
margin-top: 0px !important;
}


.modal-backdrop.in {
opacity: 0 !important;
}

.modal-backdrop {
position: absolute !important;
background-color: white !important;
}

</style>
 



  <section class="section">
  

<div class="tabs is-small">
  <ul>
 <li> <a href="index.php">{$_ADMINLANG.home.title}</a>  </li>
 <li>   <a href="../">{$_ADMINLANG.global.clientarea}</a>  </li>
 <li>  <a href="#" data-toggle="modal" data-target="#myNotes">{$_ADMINLANG.global.mynotes}</a>  </li>
  <li> <a href="myaccount.php">{$_ADMINLANG.global.myaccount}</a>  </li>
<li>  <a id="logout" href="logout.php">{$_ADMINLANG.global.logout}</a>  </li>
{$topBarNotification}
 <li> <a href="orders.php?status=Pending">  <span class="tag is-info is-rounded">{$sidebarstats.orders.pending}</span>&nbsp; {$_ADMINLANG.stats.pendingorders}   </a>  </li>
<li> <a href="invoices.php?status=Overdue"><span class="tag is-info is-rounded">{$sidebarstats.invoices.overdue}</span>&nbsp; {$_ADMINLANG.stats.overdueinvoices}</a> </li>
<li> <a href="supporttickets.php"> <span class="tag is-info is-rounded">{$sidebarstats.tickets.awaitingreply}</span>&nbsp; {$_ADMINLANG.stats.ticketsawaitingreply}</a>  </li>

  </ul>
</div>


 
    <nav class="navbar is-transparent">
  <div class="navbar-brand">
    <a class="navbar-item" href="index.php">
      <img src="yourlogo.png" alt="logo" width="112" height="28">
    </a>
    <div class="navbar-burger burger" data-target="navbarExampleTransparentExample">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>

  <div id="navbarExampleTransparentExample" class="navbar-menu">
    {include file="$template/menu.tpl"}

  </div>
</nav>


<script>
document.addEventListener('DOMContentLoaded', function () {

  // Get all "navbar-burger" elements
  var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach(function ($el) {
      $el.addEventListener('click', function () {

        // Get the target from the "data-target" attribute
        var target = $el.dataset.target;
        var $target = document.getElementById(target);

        // Toggle the class on both the "navbar-burger" and the "navbar-menu"
        $el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

});

document.querySelectorAll('.navbar-link').forEach(function(navbarLink){
  navbarLink.addEventListener('click', function(){
    navbarLink.nextElementSibling.classList.toggle('is-hidden-mobile');
  })
});
</script>


  

    <div class="alert alert-warning global-admin-warning{if !$globalAdminWarningMsg} hidden{/if}">
        {$globalAdminWarningMsg}
    </div>

    <div id="sidebaropen"{if !$minsidebar} style="display:none;"{/if}>
        <a href="#" onclick="sidebarOpen();return false">
            <img src="templates/{$template}/images/opensidebar.png" border="0" />
        </a>
    </div>
    <div id="sidebar"{if $minsidebar} style="display:none;"{/if}>
        {include file="$template/sidebar.tpl"}
    </div>

    <div class="contentarea" id="contentarea"{if !$minsidebar} style="margin-left:209px;"{/if}>

        <div style="float:left;width:100%;">

            {if $helplink}
                <div class="contexthelp">
                    <a href="http://docs.whmcs.com/{$helplink}" target="_blank">
                        <img src="images/icons/help.png" border="0" align="absmiddle" />
                        {$_ADMINLANG.help.contextlink}
                    </a>
                </div>
            {/if}

            <h1{if $pagetitle == $_ADMINLANG.global.hometitle} class="pull-left"{/if}>{$pagetitle}</h1>
