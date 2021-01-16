<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="feedback.aspx.vb" Inherits=".feedbackui" %>
<html>
<head>
    <title></title>
    <script src="scripts/feedback.js" type="text/javascript"></script>
</head>
<body>
<form id="frmtest" runat="server">
<input type="hidden" runat="server" id="hdnFeedbackType" class="dummyFeedbackLoadType" />
     <!-- Feedback Input Form -->
    <div class="overlayDialog dummyFeedbackInputForm" style="display:none">
         <div class="overlayDialogTitle overlayDialogMove dummyFrmFeedbackHeading" style="width:451px;">Feedback</div>
            <div class="overlayDialogCloseBtn dummyFrmFeedbackCloseBtn"></div>
            <div class="dialogContainer">
                <div class="formLabel">First name:</div>
                <div class="formField formFieldFeedback">
                    <input type="text" class="inputTxtNormal dummyFrmFeedbackFirstName" maxlength="50"/><span class="formFieldRequired">*</span>
                </div>
                <div class="formLabel">Last name:</div>
                <div class="formField formFieldFeedback">
                    <input type="text" class="inputTxtNormal dummyFrmFeedbackLastName" maxlength="50"/><span class="formFieldRequired">*</span>
                </div>
                <div class="formLabel">Email:</div>
                <div class="formField formFieldFeedback">
                   <input type="text" class="inputTxtNormal dummyFrmFeedbackEmail" maxlength="100"/><span class="formFieldRequired">*</span>
                </div>
                <div class="formLabel">Subject:</div>
                <div class="formField formFieldFeedback">
                    <select class="dummyFrmFeedbackSubject" style="width:180px;">
                        <option value="">Select a subject</option>   
                    </select>
                    <span class="formFieldRequired">*</span>
                </div>
                <div class="formLabel">Comments:</div>
                <div class="formField formFieldFeedback">
                    <textarea class="inputTxtNormal dummyFrmFeedbackComments" rows="5" cols="25" maxlength="2000"></textarea><span class="formFieldRequired">*</span>
                     <div class="formRequiredContainer"><span class="formFieldRequired">*</span> denotes required field</div>
                </div>
                <div class="formLabel"></div>
                <div class="formField formFieldFeedback">
                     <input type="button" value="OK" class="submitBtn dummyFrmFeedbackSaveBtn" />
                     <input type="button" value="Cancel" class="submitBtn dummyFrmFeedbackCancelBtn" />
                </div>
            </div>
         </div>
 
     <!-- Feedback List Form -->
    <div class="overlayDialog dummyFeedbackListForm" style="display:none">
       <div class="overlayDialogTitle overlayDialogMove dummyFeedbackListFormHeading" style="width:851px;">Feedback List</div>
        <div class="overlayDialogCloseBtn dummyFeedbackListFormCloseBtn"></div>
        <div class="dialogContainer">
           <div id="grdFeedbacksList" class="dummyFeedbackListFormGrid" style="height:100px;"></div>
           <div class="pagingContainer feedbacksListpagingContainer" style="width:858px">
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                   <td width="50%" align="left"><div id="feedbacksListRecinfoArea" style="margin-left:10px;"></div></td>
                   <td width="49%" align="right">No. of results per page:&nbsp;</td>
                   <td width="1%" align="right">
        	            <select class="dummyFeedbackListDdResultsPerPage">
            	            <option selected="selected" value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>
                   </td>
               </tr>
           </table>
           </div>
           <div class="feedbackContainerFadeout dummyfeedbackContainerFadeout" style='text-align:center; font-weight:bold'><br /><br /><br /><br /><br /><br />Select item from above list to view details</div>
           <div class="dummyFeedbackDetailContainer">
                <div style="height:10px;"></div>
                <div class="toolbarTabBg">
                    <div class="insidePaneTab"><a class="dummyTabFeedbackLog">Details</a></div>
                </div>
                <div class="insidePaneTabCntContainer" style="height:200px;">
                    <div class="feedbackInsideContainer dummyFeedbackLogsContainer" style="display:none;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>