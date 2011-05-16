<?php

  /**
   * @author Micah Carter <mcarter at tux dot appstate dot edu>
   **/

function intern_update(&$content, $currentVersion)
{
    switch ($currentVersion) {
        case version_compare($currentVersion, '0.0.2', '<'):
            $files = array();
            $files[] = 'templates/add_system.tpl';
            
            PHPWS_Boost::updateFiles($files, 'intern');

        case version_compare($currentVersion, '0.0.3', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_3.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.4', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_4.sql');
            if(PEAR::isError($result)){
                return $result;
            }

        case version_compare($currentVersion, '0.0.6', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_6.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.7', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_7.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.8', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_8.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.9', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_9.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.10', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_10.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.11', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_11.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.12', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_12.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.13', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_13.sql');
            if(PEAR::isError($result)){
                return $result;
            }
        case version_compare($currentVersion, '0.0.14', '<'):
            $db = new PHPWS_DB;
            $result = $db->importFile(PHPWS_SOURCE_DIR.
                                      'mod/intern/boost/updates/update_0_0_14.sql');
            if(PEAR::isError($result)){
                return $result;
            }
    }
    return TRUE;
}
