<h3>{$LANG.domaingeteppcode}</h3>

<p>
    {$LANG.domaingeteppcodeexplanation}
</p>

<br />



{php}
$clientsstats.numactivedomains; 
GLOBAL $smarty;
$numunpaidinvoices = $smarty->getVariable('clientsstats')->value['numunpaidinvoices'];
$unpaidinvoicesamount = $smarty->getVariable('clientsstats')->value['unpaidinvoicesamount'];
$numoverdueinvoices = $smarty->getVariable('clientsstats')->value['numoverdueinvoices'];
$overdueinvoicesbalance = $smarty->getVariable('clientsstats')->value['overdueinvoicesbalance'];
if ($numoverdueinvoices > 0) {
{/php}


<div class="alert alert-danger">
  Momenteel kun je      <strong>geen verhuiscode/EPP code aanvragen</strong><br> 
Je hebt momenteel een betalingsachterstand, momenteel zijn er {$clientsstats.numoverdueinvoices} openstaande facturen met een totaalbedrag van: {$clientsstats.overdueinvoicesbalance}   betaal eerst het openstaande bedrag om een verhuicode te kunnen opvragen.

</div>


{php}
}   else {
{/php}


{if $error}
    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.domaingeteppcodefailure|cat:" $error"}
{elseif $eppcode}
    {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.domaingeteppcodeis|cat:" $eppcode"}
{else}
    {include file="$template/includes/alert.tpl" type="warning" msg=$LANG.domaingeteppcodeemailconfirmation}
{/if}



{php}
} 
{/php}
