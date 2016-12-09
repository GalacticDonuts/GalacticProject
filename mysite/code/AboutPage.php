<?php
class AboutPage extends Page {

	private static $db = array(
		
		'Description1' => 'HTMLText',
		'Description2' => 'HTMLText'
	);

	private static $has_one = array(
		'ProfilePic1' => 'Image',
		'ProfilePic2' => 'Image'
	);

	public function getCMSFields() {

    $fields = parent::getCMSFields();
    
    $fields->addFieldToTab('Root.Main', $uploadField = new UploadField(
                $name = 'ProfilePic1',
                $title = 'Upload a Profile Picture'
            )    
    );
    $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Description1', 'Profile Description'));

   $fields->addFieldToTab('Root.Main', $uploadField = new UploadField(
               $name = 'ProfilePic2',
               $title = 'Upload a Profile Picture'
           )    
    );
    $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Description2', 'Profile Description'));

    return $fields;

  }


}
class AboutPage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		

		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
