<?php

use Detection\MobileDetect as MobileDetect;

class HomePage extends Page {

	private static $db = array(
		'Video' => 'Text',
		'MobileVideo' => 'Text'
	);

	private static $has_one = array(
	);

	public function getCMSFields() {

    $fields = parent::getCMSFields();
    $fields->addFieldToTab('Root.Main', TextareaField::create('Video', 'Upload your video here'));

    $fields->addFieldToTab('Root.Main', TextareaField::create('MobileVideo', 'Upload your Mobile Video here'));

    return $fields;

  }


}
class HomePage_Controller extends Page_Controller {

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

	public function Video(){

		$agent = new MobileDetect();

		if($agent->isMobile() && !$agent->isTablet() ){
			
			return $this->MobileVideo;
		}
		
		return $this->Video;
	}
}
