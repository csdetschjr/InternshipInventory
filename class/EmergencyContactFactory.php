<?php

PHPWS_Core::initModClass('intern', 'EmergencyContact.php');

class EmergencyContactFactory {

    /**
     * Returns an array of EmergencyContact objects for the given Internship.
     * 
     * @param Internship $i
     * @throws InvalidArgumentException
     * @throws Exception
     * @see EmergencyContactDB
     */
    public static function getContactsForInternship(Internship $i)
    {
        $internshipId = $i->getId();
        
        if(is_null($internshipId) || !isset($internshipId)){
            throw new InvalidArgumentException('Internship ID is required.');
        }
        
        $db = new PHPWS_DB('intern_emergency_contact');
        $db->addWhere('internship_id', $internshipId);
        
        $result = $db->getObjects('EmergencyContactDB');
        
        if(PHPWS_Error::logIfError($result)){
            throw new Exception($result->toString());
        }
        
        return $result;
    }
    
    /**
     * Returns the EmergencyContact object with the given id from the database.
     * 
     * @param int $id
     * @return EmergencyContact
     * @throws InvalidArgumentException
     * @throws Exception
     * @see EmergencyContactDB
     */
    public static function getContactById($id)
    {
        if(is_null($id) || !isset($id)){
            throw new InvalidArgumentException('Missing contact id.');
        }
        
        $db = new PHPWS_DB('intern_emergency_contact');
        $db->addWHere('id', $id);
        
        $contact = new EmergencyContactDB();
        
        $result = $db->loadObject($contact);
        
        if(PHPWS_Error::logIfError($result)){
            throw new Exception($result->toString());
        }
        
        return $contact;
    }
    
    /**
     * Deletes the passed in EmergencyContact from the database.
     * @param EmergencyContact $contact
     * @throws InvalidArgumentException
     * @throws Exception
     */
    public static function delete(EmergencyContact $contact)
    {
        $contactId = $contact->getId();
        
        if(is_null($contactId) || !isset($contactId)){
            throw new InvalidArgumentException('Missing contact id.');
        }
        
        $db = new PHPWS_DB('intern_emergency_contact');
        $db->addWhere('id', $contactId);
        
        $result = $db->delete();
        
        if(PHPWS_Error::logIfError($result)){
            throw new Exception($result->toString());
        }
        
        return true;
    }
}
?>