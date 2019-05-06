<?php

use Carbon\Carbon;
use WHMCS\View\Menu\Item as MenuItem;

// Add a helpful support hours notice to the top of the sidebar on the submit
// ticket page.
if (App::getCurrentFilename() == 'clientarea' && $_GET['action'] == 'domaindetails') {
    add_hook('ClientAreaPrimarySidebar', 2, function (MenuItem $primarySidebar)
    {

        // Create the support hours panel and make sure it's the first one
        // displayed.
        /** @var MenuItem $supportHours */
        $supportHours = $primarySidebar->addChild('Uw Domeinnamen');
        $supportHours->setClass('panel-default panel-my-domains');
        $supportHours->setOrder(50);

        $result = mysql_query("SELECT id, domain FROM tbldomains WHERE userid = ".intval($_SESSION['uid']));

        while ($data = mysql_fetch_assoc($result)) {
            $supportHours->addChild(
                $data['domain'],
                array(
                    'order' => 2,
                    'current' => $_GET['id'] === $data['id'],
                    'uri' => 'clientarea.php?action=domaindetails&id='.$data['id'],
                )

            );
        }
    });
}


// Add a helpful support hours notice to the top of the sidebar on the submit
// ticket page.
if (App::getCurrentFilename() == 'clientarea' && $_GET['action'] == 'productdetails') {
    add_hook('ClientAreaPrimarySidebar', 2, function (MenuItem $primarySidebar)
    {
        // Create the support hours panel and make sure it's the first one
        // displayed.
        /** @var MenuItem $supportHours */
        $supportHours = $primarySidebar->addChild('Uw Diensten');
        $supportHours->setClass('panel-default panel-my-products');

        $result = mysql_query("SELECT id, domain FROM tblhosting WHERE userid = ".intval($_SESSION['uid']));

        while ($data = mysql_fetch_assoc($result)) {
            $supportHours->addChild(
                $data['domain'],
                array(
                    'order' => 2,
                    'current' => $_GET['id'] === $data['id'],
                    'uri' => 'clientarea.php?action=productdetails&id='.$data['id'],
                )
            );
        }
    });
}
