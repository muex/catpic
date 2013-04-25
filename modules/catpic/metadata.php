<?php
/**
 * Metadata version
 */
$sMetadataVersion = '1.0';

/**
 * Module information
 */
$aModule = array(
    'id'           => 'catSidePic',
    'title'        => 'Kategorie Bild',
    'description'  => 'Zusätzliches Kategoriebild',
    'thumbnail'    => '',
    'version'      => '1.1',
    'author'       => 'muex',
    'email'        => 'a.mueller@muex.de',
    'extend'       => array(
        'catpic'      => 'catpic/catpic'

    ),
    'templates'     => array(
        'catpic.tpl'        => 'catpic/out/admin/tpl/catpic.tpl'
    ),
    'files' => array(
        'catpic' => 'catpic/admin/catpic.php'
    ),
   


);