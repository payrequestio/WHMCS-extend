<?php

use Carbon\Carbon;
use WHMCS\View\Menu\Item as MenuItem;

// Add a helpful support hours notice to the top of the sidebar on the submit
// ticket page.
if (App::getCurrentFilename() == 'viewinvoice') {
    add_hook('ClientAreaPrimarySidebar', 1, function (MenuItem $primarySidebar)
    {
        // Create the support hours panel and make sure it's the first one
        // displayed.
        /** @var MenuItem $supportHours */
        $supportHours = $primarySidebar->addChild('Uw Facturen');
        $supportHours->setClass('panel-default panel-my-domains');
        $supportHours->moveToFront();

        $result = mysql_query("SELECT id FROM tblinvoices WHERE userid = ".intval($_SESSION['uid']));

        while ($data = mysql_fetch_assoc($result)) {
            $supportHours->addChild(
                $data['id'],
                array(
                    'order' => 1,
                    'current' => $_GET['id'] === $data['id'],
                    'uri' => 'viewinvoice.php?id='.$data['id'],
                )
            );
        }
    });
}


