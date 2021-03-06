<?php

namespace Intern;

  /**
   * FacultySupervisor
   *
   * Represents a faculty supervisor for an academic department.
   *
   * @deprecated 
   * @see Faculty
   * @author Robert Bost <bostrt at tux dot appstate dot edu>
   * @author Jeremy Booker <jbooker at tux dot appstate dot edu>
   * @package Intern
   */

class FacultySupervisor extends Model
{
    public $first_name;
    public $last_name;
    public $phone;
    public $email;
    public $department_id;
    
    // For db page, doesn't actually exist in db
    public $faculty_last_name;
    
    /**
     * @Override Model::getDb
     */
    public function getDb()
    {
        return new PHPWS_DB('intern_faculty_supervisor');
    }

    /**
     * @Override Model::getCSV
     */
    public function getCSV()
    {
        $csv = array();

        $csv['Faculty Super. First Name'] = $this->first_name;
        $csv['Faculty Super. Last Name']  = $this->last_name;
        $csv['Faculty Super. Phone']      = $this->phone;
        $csv['Faculty Super. Email']      = $this->email;

        return $csv;
    }

    public function getFullName()
    {
        
        // If there's no first name and no last name, be sure to return a compltely empty string
        if(empty($this->first_name) && empty($this->last_name)){
            return '';
        }
        
        return "$this->first_name $this->last_name";
    }
    
    public function getPhone()
    {
        return $this->phone;
    }
    
    public function getEmail()
    {
        return $this->email;
    }
}

?>
