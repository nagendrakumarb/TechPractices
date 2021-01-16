<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="tags.aspx.vb" Inherits=".tagsui" %>
<html>
<head>
    <title></title>   
</head>
<body>
    <form id="frmTagstest" runat="server" style="padding:0; margin:0">
    
         <!-- Tags Input Form -->
        <div class="overlayDialog dummyTagsInputForm" style="display:none">
             <div class="overlayDialogTitle overlayDialogMove dummyTagsInputFormHeading" style="width:451px;">Tags</div>
                <div class="overlayDialogCloseBtn dummyTagsInputFormCloseBtn"></div>
                <div class="dialogContainer">
                    <div id="grdTagsInputForm" class="dummyTagsInputFormGrid" style="height:100px;"></div>
                    <div style="height:15px;"></div>
                    <div class="formLabel"></div>
                    <div class="formField formFieldFeedback">
                         <input type="button" value="OK" class="submitBtn dummyTagsInputFormSaveBtn" />
                         <input type="button" value="Cancel" class="submitBtn dummyTagsInputFormCancelBtn" />
                       
                    </div>
                </div>
        </div>
         <!-- Tags Associate Form -->
        <div class="dummyTagsAssociateForm" style="display:none">
            <table width="650" border="0" cellpadding="0" cellspacing="0">
               <tr>
                   <td width="305" align="left" valign="top">
                       <div id="grdFromTagsAssociate" class="dummyFromTagsAssociateGrid" style="width:305px; height:250px;"></div>
                   </td>
                   <td width="40" align="center">
                     <div class="tagMoveRight dummyTagsAssociateFormMoveRight"></div>
                     <br />
                     <div class="tagMoveLeft dummyTagsAssociateFormMoveLeft"></div>
                   </td>
                   <td width="305" align="left" valign="top">
                      <div id="grdToTagsAssociate" class="dummyToTagsAssociateGrid" style="width:305px;height:250px;"></div>
                   </td>
               </tr>
            </table>
        </div>
        
    </form>
</body>
</html>