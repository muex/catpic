<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Andre
 * Date: 25.04.13
 * Time: 13:27
 * To change this template use File | Settings | File Templates.
 */

class catpic extends oxAdminDetails
{
    protected $_sThisTemplate = 'catpic.tpl';
    //protected $_sThisTemplate = 'custom_admin_template.tpl';

    public function render() {
        parent::render();
        $content = "<h1>you are currently using OXID eSales ".$this->getShopFullEdition()." ".$this->getShopVersion()."_".$this->getRevision()."</h1>";

        $this->_aViewData['content'] = $content;

        return $this->_sThisTemplate;

    }
}