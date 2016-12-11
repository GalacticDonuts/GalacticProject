<?php

class Bio extends DataObject{
    
    private static $db = array(
        'Description' => 'HTMLText'
    );

    private static $has_one = array(
        'ProfilePic' => 'Image',
        'AboutPage' => 'AboutPage'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', $uploadField = new UploadField(
                    $name = 'ProfilePic',
                    $title = 'Upload a Profile Picture'
                )    
        );
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Description', 'Profile Description'));

        return $fields;

  }
}