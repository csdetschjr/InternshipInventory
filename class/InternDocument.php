<?php

namespace Intern;

  /**
   * InternDocument
   *
   * Manages documents and uploading documents for internships.
   *
   * @author Robert Bost <bostrt at tux dot appstate dot edu>
   */

class InternDocument extends Model
{
    public $id;
    public $internship_id;
    public $document_fc_id; // File cabinet ID. References documents(id).

    public static function getDb(){
        return new \PHPWS_DB('intern_document');
    }

    /**
     * @Override Model::getCSV
     */
    public function getCSV()
    {
        return array();
    }

    public function __construct($id = NULL)
    {
        if(is_null($id)) return;

        $db = self::getDb();
        $db->addWhere('id', $id);
        $db->loadObject($this);
    }

    /**
     * Save row in database for this object.
     */
    public function save(){
        $db = self::getDb();
        $result = $db->saveObject($this);

        return $result;
    }

    /**
     * Delete row from database that matches this object's $id.
     * Also, delete the associated document in filecabinet.
     */
    public function delete()
    {
        \PHPWS_Core::initModClass('filecabinet', 'Document.php');

        \PHPWS_DB::begin();
        $db = self::getDb();
        $db->addWhere('id',$this->id);
        $result = $db->delete();

        if(\PHPWS_Error::logIfError($result)){
            \PHPWS_DB::rollback();
            return FALSE;
        }

        $doc = new \PHPWS_Document($this->document_fc_id);
        $result = $doc->delete();

        if(\PHPWS_Error::logIfError($result)){
            \PHPWS_DB::rollback();
            return FALSE;
        }

        \PHPWS_DB::commit();
        return TRUE;
    }

    /**
     * Get the link to download this document.
     */
    public function getDownloadLink()
    {
        \PHPWS_Core::initModClass('filecabinet', 'Document.php');
        $doc = new \PHPWS_Document($this->document_fc_id);
        return \PHPWS_Text::moduleLink($doc->title, 'filecabinet', array('id' => $doc->id));
    }

    /**
     * Get the link to delete this document.
     */
    public function getDeleteLink()
    {
        $vars = array();
        $vars['doc_id'] = $this->id;
        $vars['action'] = 'delete_document';
        $link = new \PHPWS_Link(null, 'intern', $vars);

        $jsVars = array();
        $jsVars['QUESTION'] = 'Are you sure you want to delete this document?';
        $jsVars['ADDRESS']  = $link->getAddress();
        $jsVars['LINK']     = '<i class="fa fa-trash-o close"></i>';
        return javascript('confirm', $jsVars);
    }

    /**
     * Get the folder ID storing documents.
     */
    public static function getFolderId()
    {
        $db = new \PHPWS_DB('folders');
        $db->addWhere('module_created', 'intern');
        return $db->select('one');
    }
}
?>
