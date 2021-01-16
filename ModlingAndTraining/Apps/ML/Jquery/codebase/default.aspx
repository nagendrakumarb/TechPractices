<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="._default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Machine Learning -Data Modeling and Training</title>
    <link rel="shortcut icon" href="../FavIcon/faviconV10.ico" type="image/x-icon">
    <link href="../themes/styles/main.css" rel="stylesheet" type="text/css" />
    <link href="../plugins/dhtmlxGrid/codebase/dhtmlxgrid.css" rel="stylesheet" type="text/css" />
    <link href="../plugins/dhtmlxGrid/codebase/skins/dhtmlxgrid_dhx_skyblue.css" rel="stylesheet" type="text/css" />
    <link href="../plugins/dhtmlxGrid/codebase/ext/dhtmlxgrid_pgn_bricks.css" rel="stylesheet" type="text/css" />
    <link href="../plugins/dhtmlxToolbar/codebase/skins/dhtmlxtoolbar_dhx_skyblue.css" rel="stylesheet" type="text/css"  />
    <link href="../plugins/dhtmlxGrid/codebase/skins/dhtmlxgrid_DH_Datasource.css" rel="stylesheet" type="text/css" />
    <script src="../plugins/Jquery/js/jquery-1.4.3.min.js" type="text/javascript"></script>
    <script src="../plugins/Jquery/js/jquery-ui-1.8.5.custom.min.js" type="text/javascript"></script>
    <script src="../plugins/Jquery/js/jquery-cookie.js" type="text/javascript"></script>
    <script src="../plugins/rating/jquery.raty.js" type="text/javascript"></script>
    <script src="../plugins/Jquery/js/jquery-ajaxfileupload.js" type="text/javascript"></script>
    <script src="../plugins/js/json2.min.js" type="text/javascript"></script>  
    <script src="../plugins/js/clientvalidationutils.js" type="text/javascript"></script>  
    <script src="../plugins/dhtmlxGrid/codebase/dhtmlxcommon.js" type="text/javascript"></script>
    <script src="../plugins/dhtmlxGrid/codebase/dhtmlxgrid.js" type="text/javascript" ></script>
  
    <script src="../plugins/dhtmlxGrid/codebase/ext/dhtmlxgrid_json.js"  type="text/javascript" ></script>
    <script src="../plugins/dhtmlxGrid/codebase/ext/dhtmlxgrid_filter.js" type="text/javascript"></script>
    <script src="../plugins/dhtmlxGrid/codebase/ext/dhtmlxgrid_pgn.js" type="text/javascript"></script>
    <script src="../plugins/dhtmlxGrid/codebase/dhtmlxgridcell.js" type="text/javascript" ></script>
    <script src="../plugins/dhtmlxGrid/codebase/ext/dhtmlxgrid_nxml.js" type="text/javascript"></script>
    <script src="../plugins/dhtmlxToolbar/codebase/dhtmlxtoolbar.js"  type="text/javascript"></script>
    <script src="scripts/tags.js" type="text/javascript"></script>
    <script src="scripts/default.js" type="text/javascript"></script>
    <script src="scripts/export.js" type="text/javascript"></script>
</head>

<body>
    <!--Overlay-->
    <div class="dummyGridOverlay stdOverlay" style="width:100%; height:100%; display:none"></div>
    <!--Top header-->
    <div class="topHeader">
	    <div class="hubLogo"><img src="../themes/imgs/ML_DM-logo.gif" border="0"  alt="DataModeling"/>
	    </div>
	  
	    <div class="haLogo">
	       <a href="http://www.MachineLearning.com/" target="_blank"><img src="../themes/imgs/MachineLearning-logo.gif" border="0" /></a>
	    </div>
	</div>
	<!--Top Nav-->
    <div id="topNavHeader"> <!-- selNavLink0, selNavLink1, selNavLink2, selNavLink3, selNavLink4 -->
	    <ul class="topNav">
		    <li class="navLink0"><a class="dummyFavouriteTabLink">Favorites</a></li>
		    <li class="navLink1"><a class="dummyIndicatorTabLink">Indicators</a></li>
		    <li class="navLink2"><a class="dummyBenchmarkTabLink">Benchmark</a></li>
		    <li class="navLink3"><a class="dummyKPIsTabLink">KPIs</a></li>
		    <li class="navLink4"><a class="dummyMetadataTabLink">Metadata</a></li>
		    <li class="navLink5"><a class="dummyGeneralTabLink">General</a></li>
	    </ul>
        <div class="searchContainer">
    	    <div class="searchInput"><input id="txtSearchBox" type="text" class="inputTxtDis dummySearchBox" /></div>
            <div class="searchBtn dummySearchBtn"><img src="../themes/imgs/search.gif" border="0" alt="search" /></div>
        </div>
    </div>
    <!--REGISTER SECTION START -->
    <div class="dummyFrmRegister" style="display:none">
        <!--Top bar-->
        <div class="bodyTopBarContainer">
            <div class="regTopBarBgL"></div>
            <div class="regTopBarBg">
    	        <div class="regTopBarTitle">Register</div>
            </div>
            <div class="regTopBarBgR"></div>
        </div>
        <!--page Body-->
        <div class="bodyWraper" style="height:450px;">
	        <div class="contentContainer">
	            <div class="formSection">
	                <div class="formLabelReg">First name:</div>
	                <div class="formField">
	                    <input type="text" class="inputTxtNormal dummyRegFrmFirstName"  maxlength="50"/><span class="formFieldRequired">*</span>
	                </div>
	                <div class="formLabelReg">Last name:</div>
	                <div class="formField">
	                    <input type="text" class="inputTxtNormal dummyRegFrmLastName" maxlength="50"/><span class="formFieldRequired">*</span>
	                </div>
	                <div class="formLabelReg">Email:</div>
	                <div class="formField">
	                    <input type="text" class="inputTxtNormal dummyRegFrmEmail" maxlength="100" /><span class="formFieldRequired">*</span>
	                </div>
	                <div class="formLabelReg">Company:</div>
	                <div class="formField">
	                    <input type="text" class="inputTxtNormal dummyRegFrmOrg" maxlength="100" /><span class="formFieldRequired">*</span>
	                </div>
	                <div class="formLabelReg">Title:</div>
	                <div class="formField">
	                    <input type="text" class="inputTxtNormal dummyRegFrmTitle" maxlength="100"/><span class="formFieldRequired">*</span>
	                </div>
	                <div class="formLabelReg">Phone:</div>
	                <div class="formField">
	                    <input type="text" class="inputTxtNormal dummyRegFrmPhone" maxlength="20"  /><span class="formFieldRequired">*</span><br />
	                    <div class="formRequiredContainer"><span class="formFieldRequired">*</span> denotes required field</div>
	                </div>
	                
	                <div class="formLabelReg"></div>
	                <div class="formField">
	                    <input type="button" value="Register" class="submitBtn  dummyRegFrmSubmitBtn" /><br /><br />
	                    Already a Member?  <a class="dummyRegFrmSignIn">Sign In</a>.
	                </div>
	            </div>
	            <div class="contentSection">
	                <div class="regContent">
	                    Delivering anytime access to a cross-section of important and up-to-date industry financial data is similar to building an app store for finance and operations executives and has the potential to change the way companies look at CPM solutions.<br /><br />
	                    <span class="regContentHead">Use the Machine Learning - Data Modling and Training to:</span>
	                    <ul>
	                        <li>Browse library of financial benchmark data, KPIs, and economic and financial indicators.</li>
	                        <li>Leverage relevant content in your CPM application.</li>
	                        <li>Share your reviews of the content provided</li>
	                    </ul>
	                </div>
	            </div>
            </div>
        </div>
    </div>
    <!--REGISTER SECTION END -->
    
    <!--SIGN IN SECTION START -->
    <div class="dummyFrmSignIn" style="display:none;">
        <!--Top bar-->
        <div class="bodyTopBarContainer">
            <div class="regTopBarBgL"></div>
            <div class="regTopBarBg">
    	        <div class="regTopBarTitle">Sign In</div>
            </div>
            <div class="regTopBarBgR"></div>
        </div>
        <!--page Body-->
        <div class="bodyWraper" style="height:450px;">
	        <div class="contentContainer">
	            <div class="formSectionSignIn">
	                <div class="formLabelReg">Email:</div><div class="formFieldSignIn"><input type="text" class="inputTxtNormalSignIn dummySignInFrmEmail" maxlength="100"/></div>
	                <div class="formLabelReg">Password:</div><div class="formFieldSignIn"><input type="Password" class="inputTxtNormalSignIn dummySignInFrmPassword" maxlength="20"/>&nbsp;&nbsp;<a class="dummySignInFrmForgetLink">Forgot your password?</a></div>
	                <div class="formLabelReg"></div><div class="formFieldSignIn"><input  type="checkbox" id="rememberlogin" class="dummySignInFrmRemCheck" /><label for="rememberlogin">Remember me on this computer</label></div>
	                <div class="formLabelReg"></div>
	                <div class="formFieldSignIn">
	                    <input type="button" value="Sign In" class="submitBtn dummySignInFrmBtnSubmit" /> or <a class="dummySignInFrmJoiningLink">Join Machine Learning - Data Modling and Training</a>
	                </div>
	            </div>
            </div>
        </div>
    </div>
    <!--SIGN IN SECTION END -->
    <!--DATA SOURCE SECTION START -->
    <div class="dummyDataSource">
        <!--Top bar-->
        <div class="bodyTopBarContainer">
            <div class="topBarBgL"></div>
            <div class="topBarBg">
    	        <div class="topBarContentL">
    	            <div class="topBarContentText">Sort:&nbsp;</div>
        	        <div style="float:left">
        	        <select id="ddSorting" class="dummyDdSorting">
            	        <option value="5">Rating</option>
            	        <option value="4">Title</option>
                    </select>
                    </div>
                    
                    <div class="tagSelectContainer">
                        <div class="topBarContentText">Tags:&nbsp;</div>
                        <select class="dummyDdTags">
            	            <option value=""></option>
                        </select>
                    </div>
                    <div class="dummyAdminActions" style="float:left; display:none;">
                        <span class='dummyAddAction toolbarButtonAdmin'><img src="../themes/imgs/Add.gif" alt="Add" style="cursor:pointer;" /></span><span class='dummyEditAction toolbarButtonAdmin'><img src="../themes/imgs/Edit.gif" alt="Edit" style="cursor:pointer;" /></span><span class='dummyDeleteAction toolbarButtonAdmin'><img src="../themes/imgs/Delete.gif"alt="Delete" style="cursor:pointer;" /></span>
                    </div>
                </div>
                
                 <div class="topBarContentR">
                    <div class="topBarContentText">
                        Welcome
                    </div>
                    <div class="topBarContentText topBarMenu dummyMenuChange">
                        <span class="dummyWelcome">Guest</span>
                    </div>
                    <div class="topBarMenuContainer dummyUserMenuAction" style="display:none;">
                        <div class="topBarMenuLink dummySignIn"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Sign In</a></div>
                        <div class="topBarMenuLink dummyRegisterLink"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Register</a></div>
                        <div class="topBarMenuLink dummyMenuFeedbackList"  style="display:none"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Feedback History</a></div>
                        <div class="topBarMenuLink dummyMenuTagsList"  style="display:none"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Tags</a></div>
                        <div class="topBarMenuLink dummyManageUsersAction"  style="display:none"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Manage Users</a></div>
                        <div class="topBarMenuLink dummyChangePwdLinkContainer dummyChangePwd"  style="display:none"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Change Password</a></div>
                        <div class="topBarMenuLink dummySignOut"  style="display:none"><a><img src="../themes/imgs/topBarMenuLink-Icon.gif" />Sign Out</a></div>
                    </div>                    
                 </div>
            </div>
            <div class="topBarBgR"></div>
        </div>
        <!--page Body-->
        <div class="bodyWraper">
	        <div class="contentContainer">
	           <div id="dataSourceList" class="dummyGridClass"></div>
            </div>
        </div>
        <!--Paging-->
        <div class="pagingContainer">
           <table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                   <%--<td width="1%" align="left"><div id="pagingArea" style="margin:4px 0;"></div></td>--%>
                   <td width="50%" align="left"><div id="recinfoArea" style="margin-left:10px;"></div></td>
                   <td width="49%" align="right">No. of results per page:&nbsp;</td>
                   <td width="1%" align="right">
        	            <select id="ddResultsPerPage" class="dummyDdResultsPerPage">
            	            <option selected="selected" value="10">10</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                            <option value="40">40</option>
                        </select>
                   </td>
               </tr>
           </table>
        </div>
    </div>
    <!--DATA SOURCE SECTION END -->
    
    <!--Details Dialog-->
    <div class="dummyMoreView overlayDialog" style="width:460px;display:none;">
        <div class="overlayDialogTitle overlayDialogMove dummyMoreViewTitle" style="width:441px;"></div>
        <div class="overlayDialogCloseBtn dummyMoreViewCloseBtn"></div>
        <div class="dialogContainer">
            <div class="dialogSection">
                <div class="dialogImg dummyMoreViewLogoImg"></div>
                <div class="dialogActionsContainer">
                    <div id='dummyMoreViewRating' class="dialogSectionRight"></div>  
                    <div class="dialogSectionRight">
                        <div class="dialogRightTitle dummyMoreViewRatingCount"></div> 
                   </div>
                   <!--
                    <div class="dialogSectionRight">
                        <div class="dialogIcon dummyMoreViewFavIcon"></div> 
                        <div class="dialogRightTitle dummyMoreViewaAddToFavLink"></div>
                    </div>
                    -->
                   <div class="dialogSectionRight" ></div>
                    <div class="dialogSectionRight dummyMoreViewAuthor" >
                       
                    </div>
                    <div class="dialogSectionRight" style="height:10px;"></div>
                    <div class="dialogSectionRight dummyMoreViewWebSite" >
                        <a href="#"></a>
                    </div>
                </div>
            </div>
            <div class="dialogInsideTitleBar">
                <div class="dialogIcon dialogInsideTitleIcon"><img src="../themes/imgs/descIcon.png" border="0" /></div>
                <div class="dialogInsideTitle">Description</div>
            </div>
            <div class="dialogSection dummyMoreViewDescription"></div>
            
            <div class="dialogInsideTitleBar dummyMoreViewBusinessBenefitsHeader">
                <div class="dialogIcon dialogInsideTitleIcon"><img src="../themes/imgs/descIcon.png" border="0" /></div>
                <div class="dialogInsideTitle">Business Benefits</div>
            </div>
            <div class="dialogSection dummyMoreViewBusinessBenefitsDetail"></div>
           
            <div class="dialogInsideTitleBar dummyMoreViewTagsHeader">
                <div class="dialogIcon dialogInsideTitleIcon"><img src="../themes/imgs/tagIcon.png" border="0" /></div>
                <div class="dialogInsideTitle">Tags</div>
            </div>
            <div class="dialogSection dummyMoreViewTagsContainer"></div>
        </div>
    </div>
    <!--Browse Dialog-->
    <div class="dummyBrowseWebSite overlayDialog dialogBrowser" style="width:928px; display:none">
        <div class="dialogBrowserBackward"></div>
        <div class="dialogBrowserForward"></div>
        <div class="overlayDialogTitle overlayDialogMove dummyBrowseWebSiteTitle" style="width:849px;">Seeking Alpha</div>
        <div class="overlayDialogCloseBtn dummyBrowseWebSiteCloseBtn"></div>
        <div class="dialogContainer dummyBrowseWebSiteFrameContainer">
            <iframe id="frameExternalWebSite" frameborder="0" class="dummyBrowseWebSiteFrame"></iframe>
        </div>
    </div>
    <!--Category Source Form-->
    <div class="dummyFrmCatSrc overlayDialog" style="width:780px;display:none;">
        <div class="overlayDialogTitle overlayDialogMove dummyFrmCatSrcHeading" style="width:761px;"></div>
        <div class="overlayDialogCloseBtn dummyFrmCatSrcCloseBtn"></div>
        <div class="dialogContainer">
            <div class="formLabel formLabelAdmin">Category:</div>
            <div class="formField formFieldAdmin">
                <select class="inputTxtNormal dummyFrmCatSrcCategory" style="width:180px;">
                 <option value="">Select a category</option>   
                </select>
                <span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Title:</div>
            <div class="formField formFieldAdmin">
                <input type="text" class="inputTxtNormal dummyFrmCatSrcTitle" maxlength="200"/><span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Short Description:</div>
            <div class="formField formFieldAdmin">
                <textarea class="inputTxtNormal dummyFrmCatSrcShortDescription" rows="3" cols="100" maxlength="2000"></textarea>
                <span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Long Description:</div>
            <div class="formField formFieldAdmin">
                <textarea class="inputTxtNormal dummyFrmCatSrcLongDescription" rows="6" cols="100" maxlength="8000"></textarea>
                <span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Business Benefits:</div>
            <div class="formField formFieldAdmin">
                <textarea class="inputTxtNormal dummyFrmCatSrcBusinessBenefits" rows="6" cols="100" maxlength="8000"></textarea>
            </div>
            
            <div class="formLabel formLabelAdmin">Author:</div>
            <div class="formField formFieldAdmin">
                <input type="text" class="inputTxtNormal dummyFrmCatSrcAuthor" maxlength="100"/>
                 <span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Website:</div>
            <div class="formField formFieldAdmin">
                <input type="text" class="inputTxtNormal dummyFrmCatSrcWebSite" maxlength="200"/>
                 <span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Open In New Window:</div>
            <div class="formField formFieldAdmin">
                 <input type="checkbox" class="dummyFrmCatSrcOpenInNewWindow" />
            </div>
            <div class="formLabel formLabelAdmin">Small Image:</div>
            <div class="formField formFieldAdmin">
                <input type="file" id='smallLogo' class="inputTxtNormal dummyFrmCatSrcSmallLogo" maxlength="200" runat="server"/>
                <span class="formFieldRequired dummySpanRequired">*</span>
                <div class="imgPlaceHolderEditSmall dummyFrmCatSrcSmallLogoView" style="display:none"></div>
            </div>
            <div class="formLabel formLabelAdmin">Large Image:</div>
            <div class="formField formFieldAdmin">
                <input type="file"  id='bigLogo' class="inputTxtNormal dummyFrmCatSrcBigLogo" maxlength="200" runat="server" />
                 <span class="formFieldRequired dummySpanRequired">*</span>
                 <div class="imgPlaceHolderEditLarge dummyFrmCatSrcBigLogoView" style="display:none"></div>
               
            </div>
            <div class="formLabel formLabelAdmin">Tags:</div>
            <div class="formField formFieldAdmin">
                 <div class="dummyFrmCatSrcTagsContainer">
                    
                </div>                 
            </div>
            <div class="formLabel formLabelAdmin"></div>
            <div class="formField formFieldAdmin">
                <div class="formRequiredContainer"><span class="formFieldRequired">*</span> denotes required field</div>
            </div>
            <div class="formLabel formLabelAdmin"></div>
            <div class="formField formFieldAdmin">
                 <input type="button" value="OK" class="submitBtn dummyFrmCatSrcSaveBtn" />
	             <input type="button" value="Cancel" class="submitBtn dummyFrmCatSrcCancelBtn" />
            </div>
        </div>
    </div>
    <!--Change Password-->
    <div class="dummyFrmChangePwd overlayDialog" style="width:370px; display:none;">
        <div class="overlayDialogTitle overlayDialogMove dummyChangePwdHeading" style="width:351px;">Change Password</div>
        <div class="overlayDialogCloseBtn dummyFrmChangePwdCloseBtn"></div>
        <div class="dialogContainer">
            <div class="formLabel formLabelAdmin">Current Password:</div>
            <div class="formField">
                <input type="password" class="inputTxtNormal dummyFrmChangePwdCurrentPwd" maxlength="15"/><span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">New Password:</div>
            <div class="formField">
                <input type="password" class="inputTxtNormal dummyFrmChangePwdNewPwd" maxlength="15"/><span class="formFieldRequired">*</span>
            </div>
            <div class="formLabel formLabelAdmin">Confirm Password:</div>
            <div class="formField">
                <input type="password" class="inputTxtNormal dummyFrmChangePwdConfirmPwd" maxlength="15"/><span class="formFieldRequired">*</span>
                <div class="formRequiredContainer"><span class="formFieldRequired">*</span> denotes required field</div>
            </div>
            <div class="formLabel formLabelAdmin"></div>
            <div class="formField">
                 <input type="button" value="OK" class="submitBtn dummyFrmChangePwdSaveBtn" />
                 <input type="button" value="Cancel" class="submitBtn dummyFrmChangePwdCancelBtn" />
            </div>
        </div>
    </div>
    <!-- Manage User Grid -->
    <div class="dummyFrmListUsers overlayDialog" style="width:870px; display:none;">
        <div class="overlayDialogTitle overlayDialogMove dummyFrmListUsersHeading" style="width:851px;">Manage Users</div>
        <div class="overlayDialogCloseBtn dummyFrmListUsersCloseBtn"></div>
        <div class="dialogContainer">
           <div id="grdUsersList" class="dummyUsersListGrid" style="height:100px;">Grid Data</div>
           <div class="pagingContainer usersListpagingContainer" style="width:858px">
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                   <td width="50%" align="left"><div id="usersListRecinfoArea" style="margin-left:10px;"></div></td>
                   <td width="49%" align="right">No. of results per page:&nbsp;</td>
                   <td width="1%" align="right">
        	            <select id="Select1" class="dummyUserDdResultsPerPage">
            	            <option selected="selected" value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                        </select>
                   </td>
               </tr>
           </table>
           </div>
           <div class="dummyFrmListUsersActions" style="padding: 10px 0 5px 0">
                <input type="button" value="OK" class="submitBtn dummyMakeAdminUser" />
                <input type="button" value="Export" class="submitBtn dummyUserListExport" />
            </div>
        </div>
    </div>
    <!-- Feedback Input Form -->
    <div class="dummyFrmFeedbackInputContainer overlayDialogContainer" style="width:470px;height:350px; display:none;">
    </div>
    <!-- Feedback List Form -->
    <div class="dummyFrmFeedbackListContainer overlayDialogContainer" style="width:870px; display:none;">
    </div>
    <!-- Tags Input Form -->
    <div class="dummyFrmTagsInputContainer overlayDialogContainer" style="width:870px; display:none;">
    </div>
     <!--Custom Alert Window-->
    <div class="dummyAlertWindow overlayDialog" style="width:350px;display:none;">
        <div class="overlayDialogTitle overlayDialogMove dummyAlertWindowHeading" style="width:330px;">Machine Learning - Data Modling and Training</div>
        <div class="overlayDialogCloseBtn dummyAlertWindowCloseBtn"></div>
        <div class="dialogContainer">
           <div class="dialogSection">
               <div class="dummyAlertWindowMsg"></div>
               <div class="dummyAlertWindowActions" style="text-align:center">
                    <input type="button" value="OK" class="submitBtn dummyAlertWindowBtnOk" />
                    <input type="button" value="Cancel" class="submitBtn dummyAlertWindowBtnCancel" />
               </div>
            </div>
        </div>
    </div>
    <!--Footer-->
    <div class="footerContainer">
        <div class="feedbackLink dummyFeedbackInputFormLink">Send your Feedback</div>
	    <div style="float:right">
	        © 2020, Machine Learning, Inc. All Rights Reserved<br />
            <a href="http://www.MachineLearning.com/" target="_blank">Machine Learning, Inc.</a> |  
            <a href="http://www.fact-based-decisions.net/" target="_blank">Blog</a> |  
            <a href="http://www.MachineLearning.com/Offers/Current-Adwords/ha_intro_webinar_landing.aspx" target="_blank">Demos</a> |  
            <a href="https://support.MachineLearning.com/" target="_blank">Support</a> |   
            <a href="http://www.MachineLearning.com/Legal/Privacy.aspx" target="_blank">Privacy</a> | 
            <a href="http://www.MachineLearning.com/Legal/Terms.aspx" target="_blank">Terms of Use</a>
        </div>
    </div>
</body>
</html>
