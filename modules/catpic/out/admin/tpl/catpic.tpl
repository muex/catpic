[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

<script type="text/javascript">
    <!--
    function SchnellSortManager(oObj)
    {   oRadio = document.getElementsByName("editval[oxcategories__oxdefsortmode]");
        if(oObj.value)
            for ( i=0; i<oRadio.length; i++)
                oRadio.item(i).disabled="";
        else
            for ( i=0; i<oRadio.length; i++)
                oRadio.item(i).disabled = true;
    }

    function DeletePic( sField )
    {
        var oForm = document.getElementById("myedit");
        oForm.fnc.value="deletePicture";
        oForm.masterPicField.value=sField;
        oForm.submit();
    }

    function LockAssignment(obj)
    {   var aButton = document.myedit.assignArticle;
        if ( aButton != null && obj != null )
        {
            if (obj.value > 0)
            {
                aButton.disabled = true;
            }
            else
            {
                aButton.disabled = false;
            }
        }
    }
    //-->
</script>
<!-- END add to *.css file -->
<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" id="oxid" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="catpic">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>

[{ if $readonly }]
[{assign var="readonly" value="readonly disabled"}]
[{else}]
[{assign var="readonly" value=""}]
[{/if}]

[{ if $readonly_fields }]
[{assign var="readonly_fields" value="readonly disabled"}]
[{else}]
[{assign var="readonly_fields" value=""}]
[{/if}]

<form name="myedit" id="myedit" enctype="multipart/form-data" action="[{ $oViewConf->getSelfLink() }]" method="post">
<input type="hidden" name="MAX_FILE_SIZE" value="[{$iMaxUploadFileSize}]">
[{ $oViewConf->getHiddenSid() }]
<input type="hidden" name="cl" value="catpic">
<input type="hidden" name="fnc" value="">
<input type="hidden" name="oxid" value="[{ $oxid }]">
<input type="hidden" name="editval[oxcategories__oxid]" value="[{ $oxid }]">
<input type="hidden" name="masterPicField" value="">

[{if $oViewConf->isAltImageServerConfigured() }]
    <div class="warning">[{ oxmultilang ident="ALTERNATIVE_IMAGE_SERVER_NOTE" }] [{ oxinputhelp ident="HELP_ALTERNATIVE_IMAGE_SERVER_NOTE" }]</div>
    [{/if}]

<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tr>
<td valign="top" class="edittext">

<table cellspacing="0" cellpadding="0" border="0">
[{block name="admin_category_main_form"}]


    <tr>
        <td class="edittext">
            [{ oxmultilang ident="CATEGORY_MAIN_ICON" }]
        </td>
        <td class="edittext">
            <input id="oxcatpic" type="text" class="editinput" size="42" maxlength="[{$edit->oxcategories__oxicon->fldmax_length}]" name="editval[oxcategories__oxcatpic]" value="[{$edit->oxcategories__oxcatpic->value}]">
            [{ oxinputhelp ident="HELP_CATEGORY_MAIN_ICON" }]
        </td>
        <td class="edittext">
            [{ if (!($edit->oxcategories__oxcatpic->value=="nopic.jpg" || $edit->oxcategories__oxcatpic->value=="" || $edit->oxcategories__oxcatpic->value=="nopic_ico.jpg")) }]
            <a href="Javascript:DeletePic('oxcatpic');" class="delete left" [{include file="help.tpl" helpid=item_delete}]></a>
            [{/if}]
        </td>
    </tr>
    <tr>
        <td class="edittext">
            [{ oxmultilang ident="CATEGORY_MAIN_ICONUPLOAD" }] ([{ oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{ oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
        </td>
        <td class="edittext" colspan="2">
            <input class="editinput" name="myfile[CICO@oxcategories__oxcatpic]" type="file" size="26" >
        </td>
    </tr>

[{/block}]
<tr>
    <td class="edittext">
    </td>
    <td class="edittext" colspan="2"><br>
        <input type="submit" class="edittext" name="save" value="[{ oxmultilang ident="CATEGORY_MAIN_SAVE" }]" onClick="Javascript:document.myedit.fnc.value='save'" [{$readonly}]><br>
    </td>
</tr>
<tr>
    <td class="edittext">
    </td>
    <td class="edittext" colspan="2"><br>
        [{include file="language_edit.tpl"}]
    </td>
</tr>

</table>
</td>
<!-- Anfang rechte Seite -->
<td valign="top" class="edittext" align="left" width="50%"></td>
</tr>
</table>

</form>
[{include file="bottomnaviitem.tpl"}]

[{include file="bottomitem.tpl"}]
