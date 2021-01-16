var glbCategoryId;
var glbFilterText = "";
var glbCategoryItems;
var glbDataSourceItems;
var glbSelectedDataSourceItem;
var objDataSourceGrid;
var dataSourceRecordsPerPage;
var glbAllUsers;
var glbUser;
var glbUserLoggedIn = false;
var glbActiveTab = "";
var glbUserSessionKey = "DH_UserId";
var _html;
var glbUserNameCookie = "DH_Cookie_UserId";
var wndHieght;
var wndWidth;
var gridHeight;
var totalPages = 0;
var preSelectedPage = 1;
var objUsersListGrid;
var JsonDataDhtmlxFormat;
var userListRecordsPerPage;
var strFilter;
var objActions;
$(document).ready(function() {
    $.ajaxSetup({
        cache: false
    });

    wndHieght = $(window).height();
    wndWidth = $(window).width();
    gridHeight = parseInt(wndHieght) - 228;
    $("#dataSourceList").attr("style", "border:0; width:100%; height:" + gridHeight + "px;");
    $(".dummyMenuChange").unbind("click").bind("click", function(event) {
        showUserMenuAction();
        var menuLeft = $(".dummyMenuChange").position().left;
        var menuWidth = $(".dummyMenuChange").width()
        $(".dummyUserMenuAction").css({ 'left': parseInt(menuLeft) + (parseInt(menuWidth) - 100) }); //125(menu containewidth) - 25
        //$(".dummyMenuChange").css("left:" + parseInt(menuLeft) );
        event.stopPropagation();

    });
    $(".dummyFeedbackInputFormLink").unbind("click").bind("click", function() {
        loadFeedbackInputForm();
    });
    // this needs to check for logged in Session User
    checkSession(glbUserSessionKey, postCheckSession)
    loadTags(fillTagsDropDown);
    $(".dummyDdTags").unbind("change").bind("change", function() {
        doSearch($(this).val(), true);
    });
    $(".dummyDdTags").unbind("keyup").bind("keyup", function(event) {
       if(event.keyCode ==13 || event.keyCode==38 || event.keyCode==40)
        doSearch($(this).val(), true);
    });
    $("body").bind("click", function() {
        hideUserMenuAction();
    });
    $(".dummyUserMenuAction").unbind("mouseleave").bind("mouseleave", function() {
        setTimeout("hideUserMenuAction();", 100);
    });

});

function fillTagsDropDown(objTags) {
    $(".dummyDdTags").html("");
    $("<option value=''></option>").appendTo($(".dummyDdTags"));
    for (var idx = 0; idx < objTags.length; idx++) {
        if (objTags[idx].IsAssociated)
            $("<option value='" + objTags[idx].Name + "'>" + objTags[idx].Name + "</option>").appendTo($(".dummyDdTags"));
    }
}

function postCheckSession(objSession) {

    if (objSession.Value != "") {
        loadUser(objSession.Value, postLoadUser)
    }
    else {
        loadPage();
    }

}

function postLoadUser(objUser) {
    setUserLoggedIn(true);
    setUser(objUser);
    $(".dummyWelcome").html(objUser.DisplayName);
    $(".dummySignIn").hide();
    $(".dummyRegisterLink").hide();
    $(".dummySignOut").show().unbind("click").bind("click", function() {
        destroySession(glbUserSessionKey, postSignOutAction);
        hideAdminActions();
        $(".dummyManageUsersAction").hide();
        $(".dummyDdSorting option[value='11.0']").remove(); //remove for non admin user if added
        $(".dummyDdSorting option[value='11.1']").remove(); //remove for non admin user if added
    });
    
    $(".dummyMenuFeedbackList").show().unbind("click").bind("click", function() {
        loadFeedbackListForm();
    });
    if (isUserAdmin(objUser)) {
        showAdminActions();
        handleAdminActions(objUser);
        $("<option value='11.0'>Inactive</option><option value='11.1'>Active</option>").appendTo(".dummyDdSorting");
        $(".dummyMenuTagsList").show().unbind("click").bind("click", function() {
            loadTagsInputForm();
        });
        //manage user
        $(".dummyManageUsersAction").show().unbind("click").bind("click", function() {
            hideUserMenuAction();
            loadAllUser(postLoadAllUsers);

        });
    }
    loadPage();
    $(".dummyChangePwdLinkContainer").show().unbind("click").bind("click", function() {
        handleChangePwdForm();
    });

    if (objActions != null) {
        objActions.execute();//this is populated once user try to enter feedback with existing email but not signed in.
        clearActionList();
    }
}

function handleChangePwdForm() {
    hideUserMenuAction();
    showOverLay("dummyFrmChangePwd", parseInt(document.body.offsetHeight), (parseInt(document.body.offsetWidth) - 2));
    clearChangePwdForm();
    showChangePwdForm();
    $(".dummyFrmChangePwd").draggable();
    $(".dummyFrmChangePwdCancelBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideChangePwdForm();
    });
    $(".dummyFrmChangePwdCloseBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideChangePwdForm();
    });

    $(".dummyFrmChangePwdSaveBtn").unbind("click").bind("click", function() {
        if (validateChangePwdForm()) {
            glbUser.Password = $(".dummyFrmChangePwdNewPwd").val();
            updatePassword(glbUser, postChangePasswordAction);
        }
    });
}
function validateChangePwdForm() {
    var HostValidator = new MachineLearning.ValidationUtils();
    if (HostValidator.isBlank($(".dummyFrmChangePwdCurrentPwd").val())) {
        alert("Please enter your Current Password");
        $(".dummyFrmChangePwdCurrentPwd").focus();
        return false;
    }
    if (!(HostValidator.isEqual($(".dummyFrmChangePwdCurrentPwd").val(), glbUser.Password))) {
        alert("Current Password you entered is incorrect");
        $(".dummyFrmChangePwdCurrentPwd").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmChangePwdNewPwd").val())) {
        alert("Please enter your New Password");
        $(".dummyFrmChangePwdNewPwd").focus();
        return false;
    }
    if ((HostValidator.isEqual($(".dummyFrmChangePwdNewPwd").val(), glbUser.Password))) {
        alert("New Password you entered is same as Current Password");
        $(".dummyFrmChangePwdNewPwd").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmChangePwdConfirmPwd").val())) {
        alert("Please enter Confirm Password");
        $(".dummyFrmChangePwdConfirmPwd").focus();
        return false;
    }
    if (!(HostValidator.isEqual($(".dummyFrmChangePwdNewPwd").val(), $(".dummyFrmChangePwdConfirmPwd").val()))) {
        alert("Confirm Password is not same as New Password");
        $(".dummyFrmChangePwdConfirmPwd").focus();
        return false;
    }
    return true;
}
function clearChangePwdForm() {
    $(".dummyFrmChangePwdCurrentPwd").val("");
    $(".dummyFrmChangePwdNewPwd").val("");
    $(".dummyFrmChangePwdConfirmPwd").val("");
}
function postChangePasswordAction(objUser) {
    glbUser = objUser;
    alert("Your password has been changed successfully. For your records we have e-mailed your new password to you.");
    hideChangePwdForm();
    hideOverLay();
    sendChangePasswordEmail(objUser);
}
function sendChangePasswordEmail(objUser) {
    var strEmailSubject = "Machine Learning - Data Modling and Training: Password Change";
    var strEmailBody = "";
    var objEmail = new emailObject("", objUser.Email, strEmailSubject, strEmailBody, true, "", "");
    sendMail(objEmail, objUser.Id, 3, null)

}
function loadPage() {

    dataSourceRecordsPerPage = $(".dummyDdResultsPerPage").val();
    glbCategoryId = getQuerystring("catId", "")
    reSetSearch();
    reSetCategoryNavLinks();
    hideUserMenuAction();
    if (!glbUserLoggedIn)//for non logged in user
    {
        $(".dummyFavouriteTabLink").parent().removeClass("navLink0").addClass("navLinkDis");
        $(".dummyFavouriteTabLink").unbind("click");
    }
    else {
        $(".dummyFavouriteTabLink").parent().removeClass("navLinkDis").addClass("navLink0");
        $(".dummyFavouriteTabLink").unbind("click").bind("click", function() {
            loadUserFavourites();
        });
    }
    loadAllCategorySource(buildDataSourceGrid);
    $(".dummySignIn").unbind("click").bind("click", function() {
        hideUserMenuAction();
        hideRegistrationForm();
        hideDataSourceGrid();
        reSetSearch();
        handleSignInForm();
    });
    $(".dummyRegisterLink").unbind("click").bind("click", function() {
        hideUserMenuAction();
        reSetSearch();
        hideDataSourceGrid();
        hideSignInForm();
        handleRegisterForm();
    });

    //    $(".dummySearchBtn").unbind("click").bind("click", function() {
    //        doSearch();
    //    });
    $(".dummyDdSorting").unbind("change").bind("change", function() {
        doSort();
    });
    $(".dummyDdResultsPerPage").unbind("change").bind("change", function() {
        doChangePerPage();
    });
    $(".dummySearchBox").unbind("blur").bind("blur", function() {
        hideUserMenuAction();
        if ($(this).val() === "") {
            $(this).val("Search");
            $(this).removeClass("inputTxt").addClass("inputTxtDis");
        }
    }).unbind("focus").bind("focus", function() {
        if ($(this).val() === "Search") {
            $(this).val("");
            $(this).removeClass("inputTxtDis").addClass("inputTxt");
            hideUserMenuAction();
        }
    });
    $(".dummySearchBox").unbind("keyup").bind("keyup", function() {
        //$(".dummyDdTags").val("");
        doSearch($(".dummySearchBox").val(), false);
    });

    $(".dummyIndicatorTabLink").unbind("click").bind("click", function() {
        loadByCategory(1);
    });
    $(".dummyBenchmarkTabLink").unbind("click").bind("click", function() {
        loadByCategory(2);
    });
    $(".dummyKPIsTabLink").unbind("click").bind("click", function() {
        loadByCategory(3);
    });
    $(".dummyMetadataTabLink").unbind("click").bind("click", function() {
        loadByCategory(4);
    });
    $(".dummyGeneralTabLink").unbind("click").bind("click", function() {
        loadByCategory(5);
    });
  
}
function postSignOutAction() {
    setUserLoggedIn(false);
    setUser(null);
    $(".dummyWelcome").html("Guest");
    $(".dummySignIn").show();
    $(".dummyRegisterLink").show();
    $(".dummySignOut").hide();
    $(".dummyChangePwdLinkContainer").hide();
    $(".dummyMenuFeedbackList").hide();
    $(".dummyMenuTagsList").hide();
    loadPage();
}
function buildDataSourceGrid(datafeed) {
    $("#dataSourceList").html("");
    //$("#pagingArea").html("");
    $("#recinfoArea").html("");
    objDataSourceGrid = "";
    objDataSourceGrid = new dhtmlXGridObject('dataSourceList');
    objDataSourceGrid.setImagePath("../plugins/dhtmlxGrid/codebase/imgs/");
    objDataSourceGrid.setHeader("&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;");

    objDataSourceGrid.setInitWidths("150,190,*,50,0,0,0,0,70,0,0,0");
    objDataSourceGrid.setColAlign("left,left,left,left,left,left,left,left,left,left,left,left");
    objDataSourceGrid.setColVAlign("top,middle,top,top,middle,middle,middle,middle,top,middle,middle,middle");
    objDataSourceGrid.setColTypes("TitleAndRating,Image,ShortDescription,Favourite,ro,ro,ro,ro,SourceStatus,ro,ro,ro");
    objDataSourceGrid.setColSorting("na,na,na,na,na,str,str,na,na,int,na,na");
   // objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "pagingArea", true, "recinfoArea");
   // objDataSourceGrid.setPagingTemplates("[prevpages:Previous:][currentpages:][nextpages:Next:]", "[total] total records  found");
    objDataSourceGrid.enableMultiline(true);
    //if (glbUserLoggedIn)//show favouriteColumn: //this is bug from dhtmlxgrid
    
    if (glbUserLoggedIn)
        if(isUserAdmin(glbUser))
            objDataSourceGrid.setColumnsVisibility("false,false,false,false,true,true,true,true,false,true,true,true");
         else
             objDataSourceGrid.setColumnsVisibility("false,false,false,false,true,true,true,true,true,true,true,true");
    else
        objDataSourceGrid.setColumnsVisibility("false,false,false,false,true,true,true,true,true,true,true,true");
   

    objDataSourceGrid.init();
    objDataSourceGrid.setSkin("DH_Datasource");
    objDataSourceGrid.detachHeader(0);
    objDataSourceGrid.enableCellIds(true);
    //Loading Data
    //objDataSourceGrid.parse(getJsonDataDhtmlxFormat(datafeed), "json");

    if (glbCategoryId == "") glbCategoryId = 1;
    loadByCategory(glbCategoryId);
    
    objDataSourceGrid.attachEvent("onMouseOver", function(id, index) {
        if (index == 0) {
            return false;
        }
    });
    objDataSourceGrid.attachEvent("onAfterSorting", function(index, type, direction) {
        setDataSourceRecinfoText(); 
        attachRating();
    });


    objDataSourceGrid.attachEvent("onFilterEnd", function(elements) {
        setDataSourceRecinfoText();
        attachRating();
        
    });
    objDataSourceGrid.attachEvent("onPageChanged", function(ind, fInd, lInd) {
        setDataSourceRecinfoText();
        attachRating();

    });
    objDataSourceGrid.attachEvent("onRowSelect", function(id, ind) { hideUserMenuAction();});

    objDataSourceGrid.aToolBar.attachEvent("onClick", function(id) {
        setDataSourceRecinfoText();
        attachRating();
    });

}
function setDataSourceRecinfoText() {
    _html = $("#recinfoArea").find(".dhx_toolbar_text").find("div").html();
    if (_html != undefined) {
        _html = _html.split("of")[0];
        $("#recinfoArea").find(".dhx_toolbar_text").find("div").html(_html + " of " + objDataSourceGrid.rowsBuffer.length);
    }

    if (objDataSourceGrid.rowsBuffer.length == 0) {

        $("#recinfoArea").find(".dhx_toolbar_btn").eq(2).find("img").attr("src", "../plugins/dhtmlxGrid/codebase/imgs/ar_right_dis.gif");
        $("#recinfoArea").find(".dhx_toolbar_btn").eq(3).find("img").attr("src", "../plugins/dhtmlxGrid/codebase/imgs/ar_right_abs_dis.gif");
        $("#recinfoArea").find(".dhx_toolbar_btn:gt(1)").removeClass("def").addClass("dis");

    }
    else {
        
        var pgCount=objDataSourceGrid.rowsBuffer.length / objDataSourceGrid.rowsBufferOutSize;
        if (pgCount > objDataSourceGrid.currentPage) {
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(2).find("img").attr("src", "../plugins/dhtmlxGrid/codebase/imgs/ar_right.gif");
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(3).find("img").attr("src", "../plugins/dhtmlxGrid/codebase/imgs/ar_right_abs.gif");
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(2).removeClass("dis").addClass("def");
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(3).removeClass("dis").addClass("def");
        }
        else
        {

            $("#recinfoArea").find(".dhx_toolbar_btn").eq(2).find("img").attr("src", "../plugins/dhtmlxGrid/codebase/imgs/ar_right_dis.gif");
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(3).find("img").attr("src", "../plugins/dhtmlxGrid/codebase/imgs/ar_right_abs_dis.gif");
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(2).removeClass("def").addClass("dis");
            $("#recinfoArea").find(".dhx_toolbar_btn").eq(3).removeClass("def").addClass("dis");

        }
    }
   
   
}
function getJsonDataDhtmlxFormat(feedFromServer) {
    function dataSources(rows) {
        this.rows = rows;
    }
    function dataSourceItem(id, data) {
        this.id = id;
        this.data = data;
    }

    var arrRows = new Array();
    var arrData;
    var dtNameAndRating;
    var strUserFavourite = "";
    for (var i = 0; i < feedFromServer.length; i++) {
        arrData = new Array();
        dtNameAndRating = "";
        dtNameAndRating = feedFromServer[i].Name;
        if (feedFromServer[i].AverageRating != undefined && feedFromServer[i].AverageRating != null && feedFromServer[i].AverageRating != "")
            dtNameAndRating += "~" + feedFromServer[i].AverageRating
        arrData.push(dtNameAndRating);
        if (feedFromServer[i].SmallLogoUrl != undefined && feedFromServer[i].SmallLogoUrl != null)
            arrData.push(feedFromServer[i].SmallLogoUrl);
        else
            arrData.push("");
        arrData.push(feedFromServer[i].ShortDescription);
        if (feedFromServer[i].isUserFavourite)
            strUserFavourite = "1";
        else
            strUserFavourite = "0";


        arrData.push(strUserFavourite);
        arrData.push(feedFromServer[i].Name);
        arrData.push(feedFromServer[i].AverageRating);
        arrData.push(feedFromServer[i].CategoryIdx);
        arrData.push(strUserFavourite);
        if (feedFromServer[i].isActive)
            arrData.push("1");
        else
            arrData.push("0");
        arrData.push(feedFromServer[i].Id);
        if(feedFromServer[i].LongDescription != null)
            arrData.push(feedFromServer[i].LongDescription);
        else
            arrData.push("");
        if (feedFromServer[i].isActive)
            arrData.push("1");
        else
            arrData.push("0");    
        arrRows.push(new dataSourceItem(feedFromServer[i].Id, arrData));
    }
    JsonDataDhtmlxFormat = JSON.stringify(new dataSources(arrRows));
    return JsonDataDhtmlxFormat;

}

/************************ Grid Custom Cell Type ***********/
//Custom Cell Types:Images
function eXcell_Image(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {

        if (val == null || val == "")
            cellHtml = "";
        else
            cellHtml = "<div class='datasourceImg'><img src='../appImgs/" + val + "'/></div>";


        this.setCValue(cellHtml);

    }
}
eXcell_Image.prototype = new eXcell;    // nest all other methods from base class

//Custom Cell Types:Short Description
function eXcell_ShortDescription(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {

        if (val == null || val == "")
            cellHtml = "";
        else {

            cellHtml = "<div class='datasourceCell'>" + htmlDecode(val);
            cellHtml += "&nbsp;&nbsp;<a onclick='moreClick(" + cell.id.split("_")[1] + ");'>More ..</a>";
            cellHtml += "</div>"
        }


        this.setCValue(cellHtml);
    }
}
eXcell_ShortDescription.prototype = new eXcell;    // nest all other methods from base class
//Custom Cell Types:Short Description
function eXcell_Favourite(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {

        if (val == null || val == "")
            cellHtml = "";
        else {
           
            if (val === "1") {

                if (glbActiveTab === 0) {
                    cellHtml = "<div class='datasourceCell dummyFavouriteDeleteCell_" + cell.id.split("_")[1] + "' title='Remove' style='cursor:pointer;' onclick='removeFromUserFavourite(" + cell.id.split("_")[1] + ");'>";
                    cellHtml += "<img src='../themes/imgs/removeFavorite.png' align='left' hspace='5' />";
                    cellHtml += "</div>";
                    cellHtml += "<div class='datasourceCell dummyFavouriteCell_" + cell.id.split("_")[1] + "' style='display:none;'><img src='../themes/imgs/favorite.png'  hspace='5' /></div>";
                }
                else {

                    cellHtml = "<div class='datasourceCell dummyFavouriteDeleteCell_" + cell.id.split("_")[1] + "' style='display:none;cursor:pointer;' title='Remove' onclick='removeFromUserFavourite(" + cell.id.split("_")[1] + ");'>";
                    cellHtml += "<img  src='../themes/imgs/removeFavorite.png' align='left' hspace='5' />";
                    cellHtml += "</div>";
                    cellHtml += "<div class='datasourceCell dummyFavouriteCell_" + cell.id.split("_")[1] + "'><img src='../themes/imgs/favorite.png'  hspace='5'/></div>";
                }
                cellHtml += "<div class='datasourceCell dummyFavouriteAddCell_" + cell.id.split("_")[1] + "' title='Favorite<' style='display:none;cursor:pointer;' onclick='addToUserFavourite(" + cell.id.split("_")[1] + ");'>";
                cellHtml += "<img src='../themes/imgs/addFavorite.png' align='left' hspace='5' />";
                cellHtml += "</div>";

            }
            else {
                cellHtml = "<div class='datasourceCell dummyFavouriteDeleteCell_" + cell.id.split("_")[1] + "' style='cursor:pointer;display:none;' title='Remove'  onclick='removeFromUserFavourite(" + cell.id.split("_")[1] + ");'>";
                cellHtml += "<img src='../themes/imgs/removeFavorite.png' align='left' hspace='5' />";
                cellHtml += "</div>";
                cellHtml += "<div class='datasourceCell dummyFavouriteAddCell_" + cell.id.split("_")[1] + "'  title='Favorite' style='cursor:pointer;' onclick='addToUserFavourite(" + cell.id.split("_")[1] + ");'>";
                cellHtml += "<img src='../themes/imgs/addFavorite.png' align='left' hspace='5' />";
                cellHtml += "</div>";
                cellHtml += "<div class='datasourceCell dummyFavouriteCell_" + cell.id.split("_")[1] + "' style='display:none;'><img src='../themes/imgs/favorite.png'  hspace='5' /></div>";
            }

        }


        this.setCValue(cellHtml);

    }
}
eXcell_Favourite.prototype = new eXcell;    // nest all other methods from base class
//Custom Cell Types:Short Description
function eXcell_TitleAndRating(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {
        var strTitle;
        var fltRating;
        if (val == null || val == "")
            cellHtml = "";
        else {
            if (val.indexOf("~") > 0) {
                val = val.split("~");
                strTitle = val[0];
                fltRating = val[1];
            }
            else {
                strTitle = val;
                fltRating = 0;
            }

            cellHtml = "<div class='datasourceCell'><span class='datasourceTitle'>" + strTitle + "</span><br>";
            cellHtml += "<div id='divRatingContainer_" + cell.id.split("_")[1] + "' class='divRatingContainer'></div>";
            cellHtml += "<span style='display:none'>" + fltRating + "</span></div>";
        }
        this.setCValue(cellHtml);
    }
}
eXcell_TitleAndRating.prototype = new eXcell;    // nest all other methods from base class

//Custom Cell Types:Active/Non Active
function eXcell_SourceStatus(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {

        if (val == null || val == "")
            cellHtml = "";
        else {
            if (val === "1")
            {
                cellHtml = "<div class='datasourceCell'>"
                cellHtml += "&nbsp;&nbsp;<a class='dataSourceStatus_" + cell.id.split("_")[1] + "' onclick='toggleDataSourceStatus(" + cell.id.split("_")[1] + ");' title='Make Inactive'>Active</a>";
                cellHtml += "</div>"
            }
            else
            {
                cellHtml = "<div class='datasourceCell'>"
                cellHtml += "&nbsp;&nbsp;<a class='dataSourceStatus_" + cell.id.split("_")[1] + "' onclick='toggleDataSourceStatus(" + cell.id.split("_")[1] + ");' title='Make Active'>Inactive</a>";
                cellHtml += "</div>"
            }
        }


        this.setCValue(cellHtml);
       
    }
}
eXcell_SourceStatus.prototype = new eXcell;    // nest all other methods from base class
function loadByCategory(categoryid) {
    hideUserMenuAction();
    showDataSourceGrid();
    hideRegistrationForm();
    hideSignInForm();
    hideCategorySourceForm();
    $("#topNavHeader").removeClass().addClass("selNavLink" + categoryid);
    reSetSearch();
    $(".dummyDdTags").val("");
    glbCategoryId = categoryid;
    glbActiveTab = categoryid;
    objDataSourceGrid.clearAll();
    //objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "pagingArea", true, "recinfoArea");
    objDataSourceGrid.setPagingWTMode(true, true, false, false);
    objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "recinfoArea");
    objDataSourceGrid.setPagingSkin("toolbar", "dhx_skyblue");
    objDataSourceGrid.parse(getJsonDataDhtmlxFormat(glbDataSourceItems), "json");
    
    if (glbUserLoggedIn)
    {
        if (isUserAdmin(glbUser))
            objDataSourceGrid.filterBy(6, categoryid,true);
        else {
            objDataSourceGrid.filterBy(11, "1",true);
            objDataSourceGrid.filterBy(6, categoryid, true);
        }
    }
    else {
        objDataSourceGrid.filterBy(11, "1",true);
        objDataSourceGrid.filterBy(6, categoryid, true);
    }
    setDataSourceRecinfoText();
    attachRating();
    doSort();
}
function loadUserFavourites() {
    hideUserMenuAction();
    showDataSourceGrid();
    hideRegistrationForm();
    hideSignInForm();
    hideCategorySourceForm();
    $("#topNavHeader").removeClass().addClass("selNavLink0");
    reSetSearch();
    $(".dummyDdTags").val("");
    glbActiveTab = 0;
    objDataSourceGrid.clearAll();
   // objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "pagingArea", true, "recinfoArea");
    objDataSourceGrid.setPagingWTMode(true, true, false, false);
    objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "recinfoArea");
    objDataSourceGrid.setPagingSkin("toolbar", "dhx_skyblue");
    objDataSourceGrid.parse(getJsonDataDhtmlxFormat(glbDataSourceItems), "json");
    if (isUserAdmin(glbUser))
        objDataSourceGrid.filterBy(7, "1",true);
    else {
        objDataSourceGrid.filterBy(11, "1",true);
        objDataSourceGrid.filterBy(7, "1", true);
    }
    attachRating();
    setDataSourceRecinfoText();
}
function doSearch(strSearchText,blnSearchInTagsOnly) {
    var filterItems;
    showDataSourceGrid();
    hideRegistrationForm();
    hideSignInForm();
    hideCategorySourceForm();
    reSetCategoryNavLinks();
    glbActiveTab = "";
    objDataSourceGrid.clearAll();
    // objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "pagingArea", true, "recinfoArea");
    objDataSourceGrid.setPagingWTMode(true, true, false, false);
    objDataSourceGrid.enablePaging(true, dataSourceRecordsPerPage, 5, "recinfoArea");
    objDataSourceGrid.setPagingSkin("toolbar", "dhx_skyblue");
    if (blnSearchInTagsOnly)
        reSetSearch();



    if ($.trim(strSearchText) == "" && $(".dummyDdTags").val()=="") {
        objDataSourceGrid.parse(getJsonDataDhtmlxFormat(glbDataSourceItems), "json");
        if (!isUserAdmin(glbUser)) {
            objDataSourceGrid.filterBy(11, "1",true);
        }
        
    }
    else {
        if (blnSearchInTagsOnly) {
            filterItems = filterDataSourceByTags(glbDataSourceItems,strSearchText)
        }
        else {
            if ($(".dummyDdTags").val() != "")
                filterItems = filterDataSourceByTags(glbDataSourceItems, $(".dummyDdTags").val());
            else
                filterItems = glbDataSourceItems;

            filterItems = filterDataSourceByAttributes(filterItems, strSearchText);
        }
       
        objDataSourceGrid.parse(getJsonDataDhtmlxFormat(filterItems), "json");
    }
    attachRating();
    setDataSourceRecinfoText();
}
function filterDataSourceByAttributes(dataItems, strSearchText) {
    var fiterDataSourceItem = new Array();
    var strFilterName;
    var strFilterShortDesc;
    var strFilterLongDesc;
    var tagItems;
    var blnItemFound;
    strSearchText = strSearchText.toLowerCase();
    $(dataItems).each(function(idx) {
        strFilterName = "";
        strFilterShortDesc = "";
        strFilterLongDesc = "";
        blnItemFound = false;
        if (dataItems[idx].Name != null)
            strFilterName = dataItems[idx].Name.toLowerCase();

        if (dataItems[idx].ShortDescription != null)
            strFilterShortDesc = dataItems[idx].ShortDescription.toLowerCase();

        if (dataItems[idx].LongDescription != null)
            strFilterLongDesc = dataItems[idx].LongDescription.toLowerCase();
      
        
        if (strFilterName.indexOf(strSearchText) > -1)
            blnItemFound = true;
        else if (strFilterShortDesc.indexOf(strSearchText) > -1)
            blnItemFound = true;
        else if (strFilterLongDesc.indexOf(strSearchText) > -1)
            blnItemFound = true;
    
        if (blnItemFound) {
            if (glbUserLoggedIn) {
                if (isUserAdmin(glbUser)) {
                    fiterDataSourceItem.push(dataItems[idx]);
                }
                else if (dataItems[idx].isActive)
                    fiterDataSourceItem.push(dataItems[idx]);
            }
            else {
                if (dataItems[idx].isActive)
                    fiterDataSourceItem.push(dataItems[idx]);
            }
        }

    });
    return fiterDataSourceItem;

}
function filterDataSourceByTags(dataItems, strSearchText) {
    var fiterDataSourceItem = new Array();
    var tagItems;
    var blnItemFound;
    strSearchText = strSearchText.toLowerCase();
    $(dataItems).each(function(idx) {
        tagItems = new Array();
        blnItemFound = false;
        if (dataItems[idx].Tags != null)
            tagItems = dataItems[idx].Tags;

        if (tagItems.length > 0) {
            for (var jdx = 0; jdx < tagItems.length; jdx++) {
                if (tagItems[jdx].Name != "") {
                    if (tagItems[jdx].Name.toLowerCase().indexOf(strSearchText) > -1) {
                        blnItemFound = true;
                        break;
                    }
                }
            }

        }
        
        if (blnItemFound) {
            if (glbUserLoggedIn) {
                if (isUserAdmin(glbUser)) {
                    fiterDataSourceItem.push(dataItems[idx]);
                }
                else if (dataItems[idx].isActive)
                    fiterDataSourceItem.push(dataItems[idx]);
            }
            else {
                if (dataItems[idx].isActive)
                    fiterDataSourceItem.push(dataItems[idx]);
            }
        }

    });
    return fiterDataSourceItem; 
}
function reSetSearch() {
    $(".dummySearchBox").val("Search");
    $(".dummySearchBox").removeClass("inputTxt").addClass("inputTxtDis");
}
function reSetCategoryNavLinks() {
    $("#topNavHeader").removeClass();
}

function doSort() {
    showDataSourceGrid();
    
    hideRegistrationForm();
    hideSignInForm();
    if ($(".dummyDdSorting").val() == "5") {
        objDataSourceGrid.sortRows(5, "int", "des");
    }
    else if ($(".dummyDdSorting").val() == "4") {
        objDataSourceGrid.sortRows(4, "str", "asc");
    }
    else if ($(".dummyDdSorting").val() == "11.0") {//for non active
        objDataSourceGrid.sortRows(11, "str", "asc");
    }
    else if ($(".dummyDdSorting").val() == "11.1") {//for active
        objDataSourceGrid.sortRows(11, "str", "des");
    }
    objDataSourceGrid.changePage(1);
    setDataSourceRecinfoText();
    $("#dataSourceList").find(".objbox").scrollTop("0");
}
function doChangePerPage() {
    showDataSourceGrid();
    hideRegistrationForm();
    hideSignInForm();
    dataSourceRecordsPerPage = $(".dummyDdResultsPerPage").val();
    if (glbActiveTab === "") {
        if ($(".dummySearchBox").hasClass("inputTxtDis"))
            strFilter = "";
        else
            strFilter = $(".dummySearchBox").val();
        doSearch(strFilter,false);
    }
    else if (glbActiveTab === 0) {
        loadUserFavourites();
    }
    else if (glbCategoryId != "" && glbCategoryId != null) {
        loadByCategory(glbCategoryId);
    }
}





/****** use tools functions ******/
function attachRating() {
    $(".divRatingContainer").each(function(Idx) {
        $(this).html("");
        var val = $(this).parent().find("span").eq(1).html();
        $(this).raty({
            hintList: ['', '', '', '', ''],
            readOnly: true,
            path: "../plugins/rating/img/",
            start: val,
            showHalf: true,
            number: 5
        });
    });


}


function moreClick(itemId) {
    hideUserMenuAction();
    if (glbUserLoggedIn) {
        loadCategorySource(itemId, showMoreView);
    }
    else {
        hideDataSourceGrid();
        handleRegisterForm();
        reSetSearch();
    }
}

function showMoreView(objDataSource) {
    $(".dummyMoreView").draggable();
    $(".dummyMoreViewTitle").html("");
    $(".dummyMoreViewLogoImg").html("");
    $("#dummyMoreViewRating").html("");
    $(".dummyMoreViewFavIcon").html("");
    $(".dummyMoreViewAddToFavLink").html("")
    $(".dummyMoreViewDescription").html("");
    $(".dummyMoreViewWebSite").html("");
    $(".dummyMoreViewRatingCount").html("");
    $(".dummyMoreViewAuthor").html("");
    $(".dummyMoreViewTagsContainer").html("");
    $(".dummyMoreViewBusinessBenefitsDetail").html("");
    if (objDataSource.Name != undefined)
        $(".dummyMoreViewTitle").html(objDataSource.Name);
    if (objDataSource.BigLogoUrl != undefined)
        $(".dummyMoreViewLogoImg").html("<img src='../appImgs/" + objDataSource.BigLogoUrl + "' width='300px' height='185px' />");
    if (objDataSource.AverageRating != undefined) {
        DisplayMoreViewRating("dummyMoreViewRating", objDataSource.AverageRating, objDataSource.Id);

    }
    if (objDataSource.RatingCount != undefined) {
        DisplayMoreViewRatingCount("dummyMoreViewRatingCount", objDataSource.RatingCount);
    }
    if (objDataSource.Author != undefined) {
        $(".dummyMoreViewAuthor").html("Author: " + objDataSource.Author);
    }



    //    if (objDataSource.isUserFavourite != undefined) {
    //        
    //        if (objDataSource.isUserFavourite) {
    //            if (glbActiveTab === 0) {
    //                _html = "<div class='datasourceCell dummyFavouriteDeleteCell_" + objDataSource.Id + "' title='Remove from favourites'";
    //                _html += "style='cursor:pointer;' onclick='removeFromUserFavourite(" + objDataSource.Id + ");changeMoreViewFavIcon(" + objDataSource.Id + ",false);'>";
    //                _html += "<img src='../themes/imgs/removeFavorite.png' align='left' hspace='5' />";
    //                _html += "</div>";
    //                $(".dummyMoreViewFavIcon").html(_html);
    //            }
    //            else
    //                $(".dummyMoreViewFavIcon").html("<img src='../themes/imgs/favorite.png' />"); 
    //        }
    //        else {
    //                _html = "<div title='Favourite' style='cursor:pointer;' "
    //                _html += "onclick='addToUserFavourite(" + objDataSource.Id + ");changeMoreViewFavIcon(" + objDataSource.Id + ",true);'>";
    //                _html += "<img src='../themes/imgs/addFavorite.png' align='left' />";
    //                _html += "</div>";
    //                $(".dummyMoreViewFavIcon").html(_html);
    //            
    //        }
    //    }
    if (objDataSource.LongDescription != undefined) {
        if (objDataSource.LongDescription != "")
            $(".dummyMoreViewDescription").html(htmlDecode(objDataSource.LongDescription));
        else {
            if (objDataSource.ShortDescription != "")
                $(".dummyMoreViewDescription").html(htmlDecode(objDataSource.ShortDescription));
        }
    }
    else {
        if (objDataSource.ShortDescription != "")
            $(".dummyMoreViewDescription").html(htmlDecode(objDataSource.ShortDescription));
    }
    if (objDataSource.BusinessBenefits != undefined) {
        if (objDataSource.BusinessBenefits != "") {
            $(".dummyMoreViewBusinessBenefitsDetail").html(htmlDecode(objDataSource.BusinessBenefits));
            $(".dummyMoreViewBusinessBenefitsHeader").show();
            $(".dummyMoreViewBusinessBenefitsDetail").show();
        }
        else {
            $(".dummyMoreViewBusinessBenefitsHeader").hide();
            $(".dummyMoreViewBusinessBenefitsDetail").hide();
        }
    }
    else {
        $(".dummyMoreViewBusinessBenefitsHeader").hide();
        $(".dummyMoreViewBusinessBenefitsDetail").hide();
    }
    if (objDataSource.WebsiteUrl != undefined) {
        if (objDataSource.WebsiteUrl != "")
            $(".dummyMoreViewWebSite").html("<a onclick='visitWebsiteClick();'>Visit Website</a>");
    }
    if (objDataSource.Tags.length > 0) {
        $(".dummyMoreViewTagsHeader").show();
        _html="";
        for (var idx = 0; idx < objDataSource.Tags.length; idx++) {
            if(idx==0)
                _html += "[&nbsp;" + "<a class='dummyMoreViewTagsLink'>" + objDataSource.Tags[idx].Name + "</a>" + "&nbsp;]"
            else
                _html += "&nbsp;[&nbsp;" + "<a class='dummyMoreViewTagsLink'>" + objDataSource.Tags[idx].Name + "</a>" + "&nbsp;]"
        }
        $(".dummyMoreViewTagsContainer").show().html(_html); 
        
    }
    else {
        $(".dummyMoreViewTagsHeader").hide();
        $(".dummyMoreViewTagsContainer").hide();
        
    }
    
    showOverLay("dummyMoreView",parseInt(document.body.offsetHeight), (parseInt(document.body.offsetWidth) - 2));
    $(".dummyMoreView").show();
    $(".dummyMoreViewCloseBtn").unbind("click").bind("click", function() {
        $(".dummyMoreView").hide();
        hideOverLay();
    });
    $(".dummyMoreViewTagsLink").unbind("click").bind("click", function() {
        $(".dummyMoreView").hide();
        hideOverLay();
        $(".dummyDdTags").val($(this).html());
        doSearch($(this).html(), true);
        
    });
}

function changeMoreViewFavIcon(id, toFavourite) {

    if (toFavourite) {
        $(".dummyMoreViewFavIcon").html("<img src='../themes/imgs/favorite.png' align='left' />");
    }
    else {
        _html = "<div title='Favorite' style='cursor:pointer;' "
        _html += "onclick='addToUserFavourite(" + id + ");changeMoreViewFavIcon(" + id + ",true);'>";
        _html += "<img src='../themes/imgs/addFavorite.png' align='left' />";
        _html += "</div>";
        $(".dummyMoreViewFavIcon").html(_html);

    }
}

function visitWebsiteClick() {
    objDataSource = glbSelectedDataSourceItem;
    if (objDataSource.OpenInNewWindow) {
        if ($.browser.msie && $.browser.version == '7.0')
            $(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight), "width": parseInt(document.body.offsetWidth) - 2, "z-index": 201 });
        else
            $(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight) + 36, "width": parseInt(document.body.offsetWidth) - 2, "z-index": 201 });
        
        $(".dummyGridOverlay").show();
        showAlertWindow("Machine Learning - Data Modling and Training", "The website that you have selected to view does not allow the Machine Learning - Data Modling and Training to render it within our application.  A new tab will be launched with the website you have selected.  Would you like to continue?", OpenWebsiteInNewWindow, closeVisitWebsiteConfirm, closeVisitWebsiteConfirm, true);
    }
    else {
        OpenWebsiteInControlWindow();
    }



}
function closeVisitWebsiteConfirm() {
    $(".dummyGridOverlay").css("z-index", 200);
    $(".dummyMoreView").show();
}
function OpenWebsiteInNewWindow() {
    $(".dummyGridOverlay").css("z-index", 200).hide();
    $(".dummyMoreView").hide();
    window.open(objDataSource.WebsiteUrl);
}
function OpenWebsiteInControlWindow() {
    //hide back and forward buttons browse history controll is achieved
    $(".dialogBrowserBackward").hide();
    $(".dialogBrowserForward").hide();
    $(".dummyGridOverlay").css("z-index", 200);
    $(".dummyBrowseWebSite").draggable();
    hideOverLay();
    $(".dummyMoreView").hide();
    $(".dummyBrowseWebSiteTitle").html("");
    $(".dummyBrowseWebSiteFrameContainer").html("");
   

    if (objDataSource.Name != undefined)
        $(".dummyBrowseWebSiteTitle").html(objDataSource.Name);

    _html="<iframe id='frameExternalWebSite' src='"+objDataSource.WebsiteUrl+"' frameborder='0'></iframe>";
    $(".dummyBrowseWebSiteFrameContainer").html(_html);
    showOverLay("dummyBrowseWebSite", parseInt(document.body.offsetHeight), (parseInt(document.body.offsetWidth) - 2)); ;
    $(".dummyBrowseWebSite").show();
    $(".dummyBrowseWebSiteCloseBtn").unbind("click").bind("click", function() {
        $(".dummyBrowseWebSite").hide();
        $(".dummyBrowseWebSiteFrameContainer").html("");
        //showOverLay("dummyMoreView");
        hideOverLay();
        $(".dummyMoreView").hide();
    });
    $(".dialogBrowserBackward").unbind("click").bind("click", function() {
        window.history.back();
        
    });
    $(".dialogBrowserForward").unbind("click").bind("click", function() {
        window.history.forward();
    });
}
function addToUserFavourite(categorySourceIdx) {
    if (!glbUserLoggedIn) {
        hideDataSourceGrid();
        handleRegisterForm();
    }
    else {
        changeToFavourite(categorySourceIdx);
        createUserFavourite(glbUser.Id, categorySourceIdx, postUserFavouriteSaveAction);
    }


    function postUserFavouriteSaveAction() {
        updateClientDataSourceItem(categorySourceIdx, "isUserFavourite", true);


    }
}
function removeFromUserFavourite(categorySourceIdx) {

    objDataSourceGrid.setRowHidden(categorySourceIdx, true)
    deleteUserFavourite(glbUser.Id, categorySourceIdx, postUserFavouriteDeleteAction);
    function postUserFavouriteDeleteAction() {
        updateClientDataSourceItem(categorySourceIdx, "isUserFavourite", false);
        loadUserFavourites();

    }
}
function changeToFavourite(id) {
    $(".dummyFavouriteDeleteCell_" + id).hide();
    $(".dummyFavouriteCell_" + id).show();
    $(".dummyFavouriteAddCell_" + id).hide();

}
function changeToNotFavourite(id) {
    $(".dummyFavouriteDeleteCell_" + id).hide();
    $(".dummyFavouriteCell_" + id).hide();
    $(".dummyFavouriteAddCell_" + id).show();

}
function changeRating(containerId, score, id) {
    updateCategorySourceRating(glbUser.Id, score, id, postRatingChange);
    function postRatingChange(objRating) {
        updateClientDataSourceItem(id, "AverageRating", objRating.AverageRating);
        DisplayMoreViewRating(containerId, objRating.AverageRating, id);
        DisplayMoreViewRatingCount("dummyMoreViewRatingCount", objRating.RatingCount);
        ChangeListRating("divRatingContainer_" + id, objRating.AverageRating)
    }
}
function ChangeListRating(containerId, newScore) {
    $("#" + containerId).html("");
    $("#" + containerId).parent().find("span").eq(1).html(newScore);
    $("#" + containerId).raty({
        hintList: ['', '', '', '', ''],
        readOnly: true,
        path: "../plugins/rating/img/",
        start: newScore,
        showHalf: true,
        number: 5
    });
}
function DisplayMoreViewRating(containerId, startScore, SourceId) {
    $("#" + containerId).html("");
    $("#" + containerId).raty({
        hintList: ['', '', '', '', ''],
        starOn: 'star-on.png',
        starOff: 'star-off.png',
        path: "../plugins/rating/img/",
        showHalf: true,
        start: startScore,
        number: 5,
        onClick: function(score) {
            changeRating("dummyMoreViewRating", score, SourceId)
        }
    });
}

function DisplayMoreViewRatingCount(containerId, ratingCount) {
    $("." + containerId).html("");
    $("." + containerId).html("No. of user(s) rated: " + ratingCount);
}
function updateClientDataSourceItem(Id, columnId, data) {
    $(glbDataSourceItems).each(function(idx) {
        if ($(glbDataSourceItems)[idx].Id == Id) {
            for (var prop in glbDataSourceItems[idx]) {
                if (prop === columnId) {
                    glbDataSourceItems[idx][prop] = data;
                    break;
                }
            }
            return 1 > 2;
        }
    });
}
function getClientDataSourceItem(Id) {
    var dataItem;
    $(glbDataSourceItems).each(function(idx) {
        if ($(glbDataSourceItems)[idx].Id == Id) {
             dataItem =glbDataSourceItems[idx];
             return 1 > 2;
        }
    });
    return dataItem;
}
function getQuerystring(key, default_) {
    if (default_ == null) default_ = "";
    key = key.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + key + "=([^&#]*)");
    var qs = regex.exec(window.location.href);
    if (qs == null)
        return default_;
    else
        return qs[1];
}
function toggleDataSourceStatus(id) {
    var dataItem = getClientDataSourceItem(id);
    updateCategorySourceStatus(id, !dataItem.isActive, postChangeDataSourceStatus);
}

function postChangeDataSourceStatus(objDataSource) {

    if (objDataSource.isActive) {
        $(".dataSourceStatus_" + objDataSource.Id).html("Active").attr("title", "Make InActive");
        updateClientDataSourceItem(objDataSource.Id, "isActive", objDataSource.isActive);
    }
    else {
        $(".dataSourceStatus_" + objDataSource.Id).html("Inactive").attr("title", "Make Active");
        updateClientDataSourceItem(objDataSource.Id, "isActive", objDataSource.isActive);
    }
    
}

/****************** Registration Process ************************/
function handleRegisterForm() {
    hideUserMenuAction();
    showRegistrationForm();
//    $(".dummyRegFrmPhone").unbind("focus").bind("focus", function() {
//        if ($(".dummyRegFrmPhone").val() == "XXX-XXX-XXXX")
//            $(".dummyRegFrmPhone").val("").removeClass("inputTxtDis");
//    });
    $(".dummyRegFrmSignIn").unbind("click").bind("click", function() {
        hideRegistrationForm();
        handleSignInForm();
    });
    $(".dummyRegFrmSubmitBtn").unbind("click").bind("click", function() {
      
        if (validateRegisterForm()) {
            checkUserExist($(".dummyRegFrmEmail").val(), postCheckUserExist)

        }
        else
            return false;
    });
    clearRegisterForm();


    function postCheckUserExist(strResponse) {
        if (strResponse.toLowerCase() === "false")
            createUser(postRegisterAction);
        else {
            //alert("User with this email: " + $(".dummyRegFrmEmail").val() + " already exist");
            alert($(".dummyRegFrmEmail").val() + " already exists");
            $(".dummyRegFrmEmail").focus();
        }
    }
    function postRegisterAction(objUser) {
        postLoadUser(objUser);
        createSession(glbUserSessionKey, glbUser.Id, null);
        sendRegisterEmail(glbUser);
    }
}
function validateRegisterForm() {
    var HostValidator = new MachineLearning.ValidationUtils();

    if (HostValidator.isBlank($(".dummyRegFrmFirstName").val())) {
        alert("Please enter your First name");
        $(".dummyRegFrmFirstName").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyRegFrmLastName").val())) {
        alert("Please enter your Last name");
        $(".dummyRegFrmLastName").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyRegFrmEmail").val())) {
        alert("Please enter your Email");
        $(".dummyRegFrmEmail").focus();
        return false;
    }
    if (!HostValidator.isValidEmail($(".dummyRegFrmEmail").val())) {
        alert("Please enter a valid Email");
        $(".dummyRegFrmEmail").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyRegFrmOrg").val())) {
        alert("Please enter your Company");
        $(".dummyRegFrmOrg").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyRegFrmTitle").val())) {
        alert("Please enter your Title");
        $(".dummyRegFrmTitle").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyRegFrmPhone").val())) {
        alert("Please enter a valid Phone.");
        $(".dummyRegFrmPhone").focus();
        return false;
    }
    if (!HostValidator.isValidPhone($(".dummyRegFrmPhone").val())) {
        alert("Please enter a valid Phone.");
        $(".dummyRegFrmPhone").focus();
        return false;
    }
  
    return true;
}
function clearRegisterForm() {
    $(".dummyRegFrmFirstName").val("");
    $(".dummyRegFrmLastName").val("");
    $(".dummyRegFrmOrg").val("");
    $(".dummyRegFrmTitle").val("");
    $(".dummyRegFrmEmail").val("");
    $(".dummyRegFrmPhone").val("");
    //$(".dummyRegFrmPhone").val("XXX-XXX-XXXX").removeClass("inputTxtDis").addClass("inputTxtDis");
}
function sendRegisterEmail(objUser) {
    var strEmailSubject = "Machine Learning - Data Modling and Training: Account Activation";
    var strEmailBody = "";
    var objEmail = new emailObject("", objUser.Email, strEmailSubject, strEmailBody, true, "", "");
    sendMail(objEmail, objUser.Id, 1, null)

}
function setUserLoggedIn(blnLogged) {
    glbUserLoggedIn = blnLogged;
}
function setUser(objUser) {
    glbUser = objUser;

}
/**********************  Client Classes *********** ********/

function emailObject(fromAddress, toAddress, strSubject, strBody, isHtmlFormat, CcAddresses, BccAddresses) {
    this.fromAddress = fromAddress;
    this.toAddress = toAddress;
    this.subject = strSubject;
    this.body = $('<div/>').text(strBody).html();
    this.isHtmlFormat = isHtmlFormat;
    this.CcAddresses = CcAddresses;
    this.BccAddresses = BccAddresses;


}
/****************** Sign In Process ************************/
function handleSignInForm() {
    showSignInForm();
    $(".dummySignInFrmBtnSubmit").unbind("click").bind("click", function() {
        submitSignIn();
    });
    $(".dummySignInFrmPassword").unbind("keyup").bind("keyup", function(event) {
        if (event.keyCode == 13)
            submitSignIn();
    });
    $(".dummySignInFrmForgetLink").unbind("click").bind("click", function() {
        if ($.trim($(".dummySignInFrmEmail").val()) == "")
            alert("Please enter registered Email to recieve the password");
        else {
            loadUserByEmail($.trim($(".dummySignInFrmEmail").val()), postForgotPassword);
        }

    });
    $(".dummySignInFrmJoiningLink").unbind("click").bind("click", function() {
        hideDataSourceGrid();
        hideSignInForm();
        handleRegisterForm();
    });
    clearSignInForm();
    if ($.cookie(glbUserNameCookie) != null) {
        $(".dummySignInFrmEmail").val($.cookie(glbUserNameCookie));
        $(".dummySignInFrmRemCheck").attr("checked", "true");
    }
}
function submitSignIn() {
    if (validateSignInForm()) {
        signInUser($(".dummySignInFrmEmail").val(), $(".dummySignInFrmPassword").val(), postSignInUser)
        if ($(".dummySignInFrmRemCheck").is(":checked"))
            $.cookie(glbUserNameCookie, $(".dummySignInFrmEmail").val(), { expires: 365 });
        else
            $.cookie(glbUserNameCookie, null); //delete the cookie if exist


    }
    else
        return false;
}
function clearSignInForm() {
    $(".dummySignInFrmEmail").val("");
    $(".dummySignInFrmPassword").val("");
    $(".dummySignInFrmRemCheck").removeAttr("checked");
}
function validateSignInForm() {
    var HostValidator = new MachineLearning.ValidationUtils();

    if (HostValidator.isBlank($(".dummySignInFrmEmail").val())) {
        alert("Please enter your Email");
        $(".dummySignInFrmEmail").focus();
        return false;
    }
    if (!HostValidator.isValidEmail($(".dummySignInFrmEmail").val())) {
        alert("Please enter a valid Email");
        $(".dummySignInFrmEmail").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummySignInFrmPassword").val())) {
        alert("Please enter your Password");
        $(".dummySignInFrmPassword").focus();
        return false;
    }
    return true;
}
function postSignInUser(objUser) {
    if (objUser.Id === "0") {
        alert("The Email or Password you entered is incorrect");
        $(".dummySignInFrmEmail").focus();
    }
    else {
        postLoadUser(objUser);
        createSession(glbUserSessionKey, glbUser.Id, null);
    }
}
function postForgotPassword(objUser) {
    if (objUser.Id === "0") {
        alert("The Email you entered is incorrect");
        $(".dummySignInFrmEmail").focus();
    }
    else {
        sendForgotPasswordEmail(objUser);
    }

}
function sendForgotPasswordEmail(objUser) {
    var strEmailSubject = "Machine Learning - Data Modling and Training: Password Recovery";
    var strEmailBody = "";
    var objEmail = new emailObject("", objUser.Email, strEmailSubject, strEmailBody, true, "", "");
    sendMail(objEmail, objUser.Id, 2, null)
    alert("Your Password has been emailed to you");

}
/**********************  Admin Functions *********** ********/
function isUserAdmin(objUser) {
    if (objUser != null)
    {
         if (objUser.IsAdmin != undefined)
            if (objUser.IsAdmin == true)
            return true;
        else
            return false;
        else
            return false;

    }
    else
        return false;
}
function handleAdminActions(objUser) {
    //add
    $(".dummyAddAction").unbind("click").bind("click", function() {
        $(".dummySpanRequired").show();
        hideUserMenuAction();
        showOverLay("dummyFrmCatSrc", parseInt(document.body.offsetHeight)+270, (parseInt(document.body.offsetWidth) - 20));
        $(".dummyFrmCatSrcHeading").html("Add Datasource");
        $(".dummyFrmCatSrc").draggable();
        showCategorySourceForm();
        clearCategorySourceForm();
        if (glbCategoryItems == null)
            loadCategories(preAddLoadCategories);
        else {
            preAddLoadCategories(glbCategoryItems);
        }

        $(".dummyFrmCatSrcSaveBtn").unbind("click").bind("click", function() {
            if (validateCategorySourceForm(true)) {
                //getAssociatedTagsIds coming from tags.js
                createCategorySource(getAssociatedTagsIds(),postCreateCategorySource);
            }

        });

        $(".dummyFrmCatSrcTagsContainer").load("tags.aspx?loadtype=associate&id=").show();


    });
    //edit
    $(".dummyEditAction").unbind("click").bind("click", function() {
        hideUserMenuAction();
        if (objDataSourceGrid.getSelectedRowId() == null)
            alert("Please select a data source to edit");
        else {
            loadCategorySourceForEdit(objDataSourceGrid.getSelectedRowId());

        }

    });
    //delete
    $(".dummyDeleteAction").unbind("click").bind("click", function() {
        hideUserMenuAction();
        if (objDataSourceGrid.getSelectedRowId() == null)
            alert("Please select a data source to delete");
        else {

            if (confirm("Are you sure, you want to delete this data source?")) {
                deleteCategorySource(objDataSourceGrid.getSelectedRowId(), postDeleteCategorySource);
            }
        }

    });
    
    $(".dummyFrmCatSrcCancelBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideCategorySourceForm();
        showDataSourceGrid();

    });
    $(".dummyFrmCatSrcCloseBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideCategorySourceForm();
        showDataSourceGrid();

    });

}
function preAddLoadCategories(objCategories) {
    if (glbCategoryId != null)
        fillDdCategories(objCategories, glbCategoryId);
    else
        fillDdCategories(objCategories, null);
}
function clearCategorySourceForm() {
    $(".dummyFrmCatSrcCategory").val("");
    $(".dummyFrmCatSrcTitle").val("");
    $(".dummyFrmCatSrcShortDescription").val("");
    $(".dummyFrmCatSrcLongDescription").val("");
    $(".dummyFrmCatSrcBusinessBenefits").val("");
    $(".dummyFrmCatSrcAuthor").val("");
    $(".dummyFrmCatSrcWebSite").val("");
    $(".dummyFrmCatSrcSmallLogo").val("");
    $(".dummyFrmCatSrcBigLogo").val("");
    $(".dummyFrmCatSrcSmallLogoView").html("").hide();
    $(".dummyFrmCatSrcBigLogoView").html("").hide();
    $(".dummyFrmCatSrcTagsContainer").html("").hide();
    $(".dummyFrmCatSrcOpenInNewWindow").attr("checked", false)
}
function fillDdCategories(objCategories, defaultValue) {
    _html = "<option value=''>Select a category</option>";
    $(objCategories).each(function(idx) {
        _html += "<option value='" + objCategories[idx].Id + "'>" + objCategories[idx].Name + "</option>";
    });
    $(".dummyFrmCatSrcCategory").html("");
    $(".dummyFrmCatSrcCategory").append(_html);
    if (defaultValue != null)
        $(".dummyFrmCatSrcCategory").val(defaultValue);
}

function validateCategorySourceForm(blnVaidateLogo) {
    var HostValidator = new MachineLearning.ValidationUtils();

    if (HostValidator.isBlank($(".dummyFrmCatSrcCategory").val())) {
        alert("Please select Category");
        $(".dummyFrmCatSrcCategory").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmCatSrcTitle").val())) {
        alert("Please enter Title");
        $(".dummyFrmCatSrcTitle").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmCatSrcShortDescription").val())) {
        alert("Please enter Short Description");
        $(".dummyFrmCatSrcShortDescription").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmCatSrcLongDescription").val())) {
        alert("Please enter Long Description");
        $(".dummyFrmCatSrcLongDescription").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmCatSrcAuthor").val())) {
        alert("Please enter Author");
        $(".dummyFrmCatSrcAuthor").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmCatSrcWebSite").val())) {
        alert("Please enter Website");
        $(".dummyFrmCatSrcWebSite").focus();
        return false;
    }
    if (!HostValidator.isValidWebSiteUrl($(".dummyFrmCatSrcWebSite").val())) {
        alert("Please enter a valid Website");
        $(".dummyFrmCatSrcWebSite").focus();
        return false;
    }
    if (blnVaidateLogo) {
        if (HostValidator.isBlank($(".dummyFrmCatSrcSmallLogo").val())) {
            alert("Please select Small Image");
            $(".dummyFrmCatSrcSmallLogo").focus();
            return false;
        }
        if (HostValidator.isBlank($(".dummyFrmCatSrcBigLogo").val())) {
            alert("Please select Big Image");
            $(".dummyFrmCatSrcBigLogo").focus();
            return false;
        }
    }
    
    return true;

}
function postCreateCategorySource(objDataSource) {


     upLoadSmallLogo();
     function upLoadSmallLogo() {
         ajaxUploadLogo('smallLogo', objDataSource.SmallLogoUrl, upLoadBigLogo);
     }
     function upLoadBigLogo() {
         ajaxUploadLogo('bigLogo', objDataSource.BigLogoUrl, postUploadLogos);
     }

     function postUploadLogos() {
         loadAllCategorySource(postAddCategorySource);
     }
    

    function postAddCategorySource(objDataSources) {
        hideOverLay();
        hideCategorySourceForm();
        showDataSourceGrid();
        glbCategoryId = objDataSource.CategoryIdx;
        loadByCategory(glbCategoryId);
        objDataSourceGrid.sortRows(9, "int", "des");
        SetSelectedRow(objDataSource.Id, 1);
    }


}
function loadCategorySourceForEdit(Idx) {
    //$(".dummySpanRequired").hide();
    clearCategorySourceForm();
    showOverLay("dummyFrmCatSrc",parseInt($(".dummyFrmCatSrc").height() + 565),(parseInt(document.body.offsetWidth) - 20));
    showCategorySourceForm();
    $(".dummyFrmCatSrc").draggable();
    $(".dummyFrmCatSrcHeading").html("Edit Datasource");
    loadCategorySource(Idx, fillCategorySourceEditForm)
}
function fillCategorySourceEditForm(objSource) {

    if (glbCategoryItems == null)
        loadCategories(preEditLoadCategories);
    else
        preEditLoadCategories(glbCategoryItems);

    $(".dummyFrmCatSrcTitle").val(objSource.Name);
    $(".dummyFrmCatSrcShortDescription").val(htmlDecode(objSource.ShortDescription));
    $(".dummyFrmCatSrcLongDescription").val(htmlDecode(objSource.LongDescription));
    $(".dummyFrmCatSrcBusinessBenefits").val(htmlDecode(objSource.BusinessBenefits));
    $(".dummyFrmCatSrcAuthor").val(objSource.Author);
    $(".dummyFrmCatSrcWebSite").val(objSource.WebsiteUrl);
    if (objSource.OpenInNewWindow)
        $(".dummyFrmCatSrcOpenInNewWindow").attr("checked",true)
    $(".dummyFrmCatSrcSmallLogoView").html("<img src='../appImgs/" + objSource.SmallLogoUrl + "'/>").show();
    $(".dummyFrmCatSrcBigLogoView").html("<img src='../appImgs/" + objSource.BigLogoUrl + "'/>").show();
    function preEditLoadCategories(objCategories) {
        fillDdCategories(objCategories, objSource.CategoryIdx);

    }
    $(".dummyFrmCatSrcTagsContainer").load("tags.aspx?loadtype=associate&id=" + objSource.Id).show();

    $(".dummyFrmCatSrcSaveBtn").unbind("click").bind("click", function() {
        if (validateCategorySourceForm(false)) {
            //getAssociatedTagsIds coming from tags.js
            updateCategorySource(objSource.Id,getAssociatedTagsIds(), postUpdateCategorySource);
        }

    });
}

function postUpdateCategorySource(objDataSource) {
    upLoadLogo();
    function upLoadLogo() 
    {
        if ($(".dummyFrmCatSrcSmallLogo").val() != "") {
            ajaxUploadLogo('smallLogo', objDataSource.SmallLogoUrl, upLoadBigLogo);
        }
        else if ($(".dummyFrmCatSrcBigLogo").val() != "") {
             upLoadBigLogo();
        }
        else {
            postUpload();
        }
        

    }
    function upLoadBigLogo() {
        if ($(".dummyFrmCatSrcBigLogo").val() != "") {
            ajaxUploadLogo('bigLogo', objDataSource.BigLogoUrl, postUpload);
        }
        else {
            postUpload();
        }
    }
   
    function postUpload() {
       loadAllCategorySource(postEdit)
    }

        

    function postEdit() {
        hideCategorySourceForm();
        hideOverLay();
        showDataSourceGrid();
        glbCategoryId = objDataSource.CategoryIdx;
        loadByCategory(glbCategoryId);
        showDataSourceGrid();
        if (glbDataSourceItems.length > parseInt($(".dummyDdResultsPerPage").val())) {
            totalPages = glbDataSourceItems.length / parseInt($(".dummyDdResultsPerPage").val());
            if (totalPages > parseInt(totalPages))
                totalPages = totalPages + 1;
        }
        else
            totalPages = 1;
        SetSelectedRow(objDataSource.Id, 1);
    }


    // updateClientDataSourceItem(objSource.Id, "Name", objSource.Name);
    // updateClientDataSourceItem(objSource.Id, "ShortDescription", objSource.ShortDescription);
}
function postDeleteCategorySource() {
    loadAllCategorySource(postRemoveCategorySource);
    function postRemoveCategorySource(objDataSources) {
        hideCategorySourceForm();
        showDataSourceGrid();
        if (glbCategoryId != null)
            loadByCategory(glbCategoryId);
        else
            loadUserFavourites();

        doSort();

    }


}
function SetSelectedRow(rowid, pageno) {
    if (glbCategoryItems.length > 0) {
        objDataSourceGrid.changePage(pageno);
        if (objDataSourceGrid.doesRowExist(rowid))
            objDataSourceGrid.selectRowById(rowid, false, true, false);
        else {
            pageno = pageno + 1;
            if (pageno <= totalPages)
                SetSelectedRow(rowid, pageno);
            else
                objDataSourceGrid.changePage(1);
        }
    }
}
/**********************  Manage Users Functions *********** ********/
function postLoadAllUsers(objUsers) {
    buildUsersListGrid(objUsers);
    //$(".dummyFrmListUsers").draggable();
    $("#grdUsersList").css("height", parseInt(document.body.offsetHeight) - 186);
    showOverLay("dummyFrmListUsers", parseInt(document.body.offsetHeight),(parseInt(document.body.offsetWidth) - 2));
    showManageUsersForm();
    $(".dummyMakeAdminUser").unbind("click").bind("click", function() {
        var updatedUsersList = getUpdatedUsers();
        if (updatedUsersList.length > 0) {
            $(updatedUsersList).each(function(idx) {
                updateUserAdminStatus(updatedUsersList[idx]);
            });
            alert("Users admin status saved");
        }

    });
    $(".dummyFrmListUsersCloseBtn").unbind("click").bind("click", function() {
        hideManageUsersForm();
        hideOverLay();
    });
    $(".dummyUserListExport").unbind("click").bind("click", function() {
        var strIds = "";
        for (var idx = 0; idx < objUsersListGrid.rowsBuffer.length; idx++) {
           strIds += objUsersListGrid.rowsBuffer[idx].idd + "," ;
        }
        if(strIds!="") 
            strIds=strIds.substring(0,strIds.length-1);

        ExportHandler("Name,Admin,Copy Email,Registered Date,Title,Company,Email,Phone", "DisplayName,IsAdmin,CopyEmail,CreatedOnDisplay,Title,Organization,Email,Phone", strIds);
    });
}
function buildUsersListGrid(datafeed) {

    
    userListRecordsPerPage = $(".dummyUserDdResultsPerPage").val();
    $("#grdUsersList").html("");
    //$("#usersListPagingArea").html("");
    $("#usersListRecinfoArea").html("");
    objUsersListGrid = "";
    objUsersListGrid = new dhtmlXGridObject('grdUsersList');
    objUsersListGrid.setImagePath("../plugins/dhtmlxGrid/codebase/imgs/");
    objUsersListGrid.setHeader("#,Name,Admin,Copy Email,Registered Date,Title,Company,Email,Phone,&nbsp;,&nbsp;,&nbsp;,&nbsp;");
    objUsersListGrid._in_header_userisadmin = function(tag, index, data) {
    _html = "<select type='text' id='filteruserisdadmin' class='dummyfilteruserisdadmin excelSelect' onchange='customfilterUserList(9,this.value)'>"
        _html +="<option value=''></option>"
        _html +="<option value='1'>Yes</option>"
        _html +="<option value='0'>No</option>"
        _html += "</select>";
        tag.innerHTML = _html;
    };
    objUsersListGrid._in_header_copyemail = function(tag, index, data) {
    _html = "<select type='text' id='filtercopyemail' class='dummyfiltercopyemail excelSelect' onchange='customfilterUserList(10,this.value)'>"
        _html += "<option value=''></option>"
        _html += "<option value='1'>Yes</option>"
        _html += "<option value='0'>No</option>"
        _html += "</select>";
        tag.innerHTML = _html;
    };
    objUsersListGrid.attachHeader("&nbsp;,#text_filter,#userisadmin,#copyemail,#text_filter,#text_filter,#text_filter,#text_filter,#text_filter,&nbsp;,&nbsp;,&nbsp;,&nbsp;")
    objUsersListGrid.setInitWidths("50,150,60,80,110,150,150,150,150,20,20,20,20");
    objUsersListGrid.setColAlign("left,left,center,center,left,left,left,left,left,left,left,left,left");
    objUsersListGrid.setColVAlign("middle,middle,middle,middle,middle,middle,middle,middle,middle,middle,middle,middle,middle");
    objUsersListGrid.setColTypes("ronum,ro,UserIsAdmin,CopyEmail,ro,ro,ro,ro,ro,ro,ro,ro,ro");
    objUsersListGrid.setColSorting(GetColSortingString("int,str,str,str,date,str,str,str,str,str,str,str,str"));
    //objUsersListGrid.enablePaging(true, 10, 5, "usersListPagingArea", true, "usersListRecinfoArea");
    //objUsersListGrid.setPagingTemplates("[prevpages:Previous:][currentpages:][nextpages:Next:]", "[total] total records  found");
    objUsersListGrid.enableMultiline(false);
    objUsersListGrid.setColumnsVisibility("false,false,false,false,false,false,false,false,false,true,true,true,true");


    objUsersListGrid.setSkin("dhx_skyblue");
    objUsersListGrid.setPagingWTMode(true, true, false, false);
    objUsersListGrid.enablePaging(true, userListRecordsPerPage, 5, "usersListRecinfoArea");
    objUsersListGrid.setPagingSkin("toolbar", "dhx_skyblue");
    objUsersListGrid.enableCellIds(true);   
    objUsersListGrid.init();
    //Loading Data
    objUsersListGrid.parse(getUserJsonDataDhtmlxFormat(datafeed), "json");
    //$(".dhx_toolbar_btn").find("div").hide().parent().hide();
    // $(".dhx_toolbar_arw").hide();
    //.next().hide().next().hide().next().hide();
    setUsersListRecinfoText();
    objUsersListGrid.aToolBar.attachEvent("onClick", function(id) {
        setUsersListRecinfoText();
    });
   

    objUsersListGrid.attachEvent("onAfterSorting", function(index, type, direction) {
        setUsersListRecinfoText();
    });


    objUsersListGrid.attachEvent("onFilterEnd", function(elements) {
        setUsersListRecinfoText();
    });
    $(".dummyUserDdResultsPerPage").unbind("change").bind("change", function() {
        buildUsersListGrid(glbAllUsers);
    });
    $(".dummyfilteruserisdadmin").parent().addClass("filter").parent().attr("style", "cursor:e-resize;");
    $(".dummyfilteruserisdadmin").unbind("click").bind("click", function() {
        $(this).focus(); 
    
    });
    $(".dummyfiltercopyemail").parent().addClass("filter").parent().attr("style", "cursor:e-resize;");
    $(".dummyfiltercopyemail").unbind("click").bind("click", function() {
        $(this).focus();
    });
    //the below code is required to disable sorting on filter row clicks
    $(".filter").parent().unbind("click").bind("click", function(event) {
        event.stopPropagation();

    });
    $(".filter").parent().unbind("mousedown").bind("mousedown", function(event) {
        event.stopPropagation();
    });

}
function customfilterUserList(colIdx,filterValue) {
    objUsersListGrid.filterBy(colIdx, filterValue);
}

function setUsersListRecinfoText() {
    _html = $("#usersListRecinfoArea").find(".dhx_toolbar_text").find("div").html();
    $("#usersListRecinfoArea").find(".dhx_toolbar_text").find("div").html(_html + " of " + objUsersListGrid.rowsBuffer.length);
}
function getUserJsonDataDhtmlxFormat(feedFromServer) {
    function dataSources(rows) {
        this.rows = rows;
    }
    function dataSourceItem(id, data) {
        this.id = id;
        this.data = data;
    }

    var arrRows = new Array();
    for (var i = 0; i < feedFromServer.length; i++) {
        arrData = new Array();
        arrData.push(i+1);
        arrData.push(feedFromServer[i].DisplayName);
        if (feedFromServer[i].IsAdmin == null) {
            arrData.push("");
            arrData.push("");
        }
        else {
            if (feedFromServer[i].IsAdmin) {
                arrData.push("1");
                if (feedFromServer[i].CopyEmail)
                    arrData.push("1");
                else
                    arrData.push("0");
            }
            else {
                arrData.push("0");
                arrData.push("");
            }
        }
        
        if (feedFromServer[i].CreatedOn != null) {
            arrData.push(convertjsonDateToClientDate(feedFromServer[i].CreatedOn));
        }

        else
            arrData.push("");
        arrData.push(feedFromServer[i].Title);
        arrData.push(feedFromServer[i].Organization);
        arrData.push(feedFromServer[i].Email);
        arrData.push(feedFromServer[i].Phone);
        if (feedFromServer[i].IsAdmin == null) {
            arrData.push("");
            arrData.push("");
        }
        else {
            if (feedFromServer[i].IsAdmin) {
                arrData.push("1");
                if (feedFromServer[i].CopyEmail)
                    arrData.push("1");
                else
                    arrData.push("0");
            }
            else {
                arrData.push("0");
                arrData.push("0");
            }
        }
        if (feedFromServer[i].CreatedOn != null) {
            arrData.push(convertjsonDateToClientDate(feedFromServer[i].CreatedOn));
        }

        arrData.push(feedFromServer[i].Id); 
        arrRows.push(new dataSourceItem(feedFromServer[i].Id, arrData));
    }
    JsonDataDhtmlxFormat = JSON.stringify(new dataSources(arrRows));
    return JsonDataDhtmlxFormat;

}

//Custom Cell Types:UserIsAdmin
function eXcell_UserIsAdmin(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {
        if (val == "1")
            cellHtml = "<input type='checkbox' checked id='chkAdmin" + cell.id.split("_")[1] + "'  onclick='toggleIsAdmin(" + cell.id.split("_")[1] + ");'/><span style='display:none'>Yes</span>"
        else
            cellHtml = "<input type='checkbox' id='chkAdmin" + cell.id.split("_")[1] + "'  onclick='toggleIsAdmin(" + cell.id.split("_")[1] + ");'/><span style='display:none'>No</span>"
        this.setCValue(cellHtml);
    }
}
eXcell_UserIsAdmin.prototype = new eXcell;    // nest all other methods from base class

//Custom Cell Types:CopyEmail
function eXcell_CopyEmail(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {
        if (val == "1")
            cellHtml = "<input type='checkbox' checked id='chkCopyEmail" + cell.id.split("_")[1] + "'  onclick='toggleCopyEmail(" + cell.id.split("_")[1] + ");'/><span style='display:none'>Yes</span>"
        else {
            if (val == "0")
                cellHtml = "<input type='checkbox' id='chkCopyEmail" + cell.id.split("_")[1] + "' onclick='toggleCopyEmail(" + cell.id.split("_")[1] + ");'/><span style='display:none'>No</span>"
            else
                cellHtml = "<input type='checkbox' id='chkCopyEmail" + cell.id.split("_")[1] + "'  disabled onclick='toggleCopyEmail(" + cell.id.split("_")[1] + ");'/><span style='display:none'>No</span>"
        }

        this.setCValue(cellHtml);
    }
}
eXcell_CopyEmail.prototype = new eXcell;    // nest all other methods from base class

function toggleIsAdmin(id) {
    if ($("#chkAdmin" + id).is(":checked")) {
        $("#chkCopyEmail" + id).removeAttr("disabled");
        $("#chkAdmin" + id).next().html("Yes");
        updateUserListItem(id, "IsAdmin", true);
        updateHiddenUserListCells(id, 9, 1);
    }
    else {
        $("#chkCopyEmail" + id).removeAttr("checked");
        $("#chkCopyEmail" + id).attr("disabled", "disabled");
        $("#chkAdmin" + id).next().html("No");
        updateUserListItem(id, "IsAdmin", false);
        updateHiddenUserListCells(id, 9, 0);
    }
    toggleCopyEmail(id);
}
function toggleCopyEmail(id) {
    if ($("#chkCopyEmail" + id).is(":checked")) {
        $("#chkCopyEmail" + id).next().html("Yes");
        updateUserListItem(id, "CopyEmail", true);
        updateHiddenUserListCells(id, 10, 1);
    }

    else {
        $("#chkCopyEmail" + id).next().html("No");
        updateUserListItem(id, "CopyEmail", false);
        updateHiddenUserListCells(id, 10, 0);
    }

}
function updateHiddenUserListCells(rid, colIdx, value) {
    var cellObj = objUsersListGrid.cellById(rid, colIdx);
    cellObj.cell.innerHTML = value;
}

function updateUserListItem(Id, columnId, data) {
    $(glbAllUsers).each(function(idx) {
        if ($(glbAllUsers)[idx].Id == Id) {
            for (var prop in glbAllUsers[idx]) {
                if (prop === columnId) {
                    glbAllUsers[idx][prop] = data;
                    glbAllUsers[idx].RowChanged = true;
                    break;
                }
            }
            return 1 > 2;
        }
    });
}
function getUpdatedUsers() {
    var updatedUsers = new Array();
    $(glbAllUsers).each(function(idx) {
        if ($(glbAllUsers)[idx].RowChanged == true)
            updatedUsers.push($(glbAllUsers)[idx]);
    });
    return updatedUsers;
}

/**********************  Feedback Functions *********** ********/
function loadFeedbackInputForm() {
    hideUserMenuAction();
    hideFeedbackListContainer();
    $(".dummyFrmFeedbackInputContainer").draggable();
    feedbackInputOverLay();
    $(".dummyFrmFeedbackInputContainer").load("feedback.aspx?loadtype=input");
    showFeedbackInputContainer();

}
function loadFeedbackListForm() {
    hideUserMenuAction();
    hideFeedbackInputContainer();
    //$(".dummyFrmFeedbackListContainer").draggable();
    $(".dummyFrmFeedbackListContainer").load("feedback.aspx?loadtype=list");
    showOverLay("dummyFrmFeedbackListContainer", parseInt(document.body.offsetHeight), (parseInt(document.body.offsetWidth) - 2));
    showFeedbackListContainer();

}
function feedbackInputOverLay() {
    showOverLay("dummyFrmFeedbackInputContainer", parseInt(document.body.offsetHeight), (parseInt(document.body.offsetWidth) - 2));
}
/**********************  Tags Functions *********** ********/
function loadTagsInputForm() {
    hideUserMenuAction();
    hideFeedbackListContainer();
    hideFeedbackInputContainer();
    //$(".dummyFrmTagsInputContainer").draggable();
    $(".dummyFrmTagsInputContainer").load("tags.aspx?loadtype=input&id=");
    showOverLay("dummyFrmTagsInputContainer", parseInt(document.body.offsetHeight), (parseInt(document.body.offsetWidth) - 2));
    showTagsInputContainer();
}




/***************************Common cell types  ******************/
//Custom Cell Types:for rownum column
function eXcell_ronum(cell) {

    if (cell) {
        this.cell = cell;
        this.grid = this.cell.parentNode.grid;
    }
    this.edit = function() { }                                //read-only cell doesn't have edit method
    this.isDisabled = function() { return true; }      // the cell is read-only, that's why it is always in the disabled state
    this.setValue = function(val) {

        if (val == null || val == "")
            cellHtml = "";
        else
            cellHtml = "<div >" + val + "</div>";
        // cellHtml = val;

        this.setCValue(cellHtml);
        $(cell).addClass("excelCellNum");

    }
    this.getValue = function() {
        return this.cell.innerHTML; // get value

    }
}

eXcell_ronum.prototype = new eXcell;    // nest all other methods from base class
/**********************  Show/Hide Functions *********** ********/
function showDataSourceGrid() {
    $(".dummyDataSource").show();
}
function hideDataSourceGrid() {
    $(".dummyDataSource").hide();
}
function showAdminActions() {
    $(".dummyAdminActions").show();
}
function hideAdminActions() {
    $(".dummyAdminActions").hide();
}
function showCategorySourceForm() {
    $(".dummyFrmCatSrc").show();
}

function hideCategorySourceForm() {
    $(".dummyFrmCatSrc").hide();
}
function showSignInForm() {
    $(".dummyFrmSignIn").show();
}
function hideSignInForm() {
    $(".dummyFrmSignIn").hide();
}
function showRegistrationForm() {
    $(".dummyFrmRegister").show()
}
function hideRegistrationForm() {
    $(".dummyFrmRegister").hide()
}
function showChangePwdForm() {
    $(".dummyFrmChangePwd").show();
}
function hideChangePwdForm() {
    $(".dummyFrmChangePwd").hide();
}
function showManageUsersForm() {
    $(".dummyFrmListUsers").show();
}
function hideManageUsersForm() {
    $(".dummyFrmListUsers").hide();
}
function showUserMenuAction()
{
    $(".dummyUserMenuAction").show();
}
function hideUserMenuAction() {
    $(".dummyUserMenuAction").hide();
}
function showFeedbackInputContainer() {
    $(".dummyFrmFeedbackInputContainer").show();
}
function hideFeedbackInputContainer() {
    $(".dummyFrmFeedbackInputContainer").hide();
}
function showFeedbackListContainer() {
    $(".dummyFrmFeedbackListContainer").show();
}
function hideFeedbackListContainer() {
    $(".dummyFrmFeedbackListContainer").hide();
}
function showTagsInputContainer() {
    $(".dummyFrmTagsInputContainer").show();
}
function hideTagsInputContainer() {
    $(".dummyFrmTagsInputContainer").hide();
}
function showOverLay(containerClass,overlayHeight,overlayWidth) {
    var PopupContainer = $("." + containerClass);
    if ($.browser.msie && $.browser.version == '7.0')
        $(".dummyGridOverlay").css("height", overlayHeight);
    else
        $(".dummyGridOverlay").css("height", parseInt(overlayHeight)+36);
        
        
    $(".dummyGridOverlay").css("width", overlayWidth);
    if (containerClass === "dummyBrowseWebSite") {
        PopupContainer.css({
            'height': parseInt(document.body.offsetHeight) - 117,
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': 80,
            'display': 'none'
        });
        $("#frameExternalWebSite").css("height", parseInt(document.body.offsetHeight) - 143);
    }
    else if (containerClass === "dummyFrmCatSrc") {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': 80,
            'display': 'none'
        });

    }
    else if (containerClass === "dummyFrmListUsers") {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': 80,
            'display': 'none'
        });

    }
    else if (containerClass === "dummyFrmFeedbackInputContainer") {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': wndHieght / 2 - (PopupContainer.height() / 2),
            'display': 'none'
        });

    }
    else if (containerClass === "dummyFrmFeedbackListContainer") {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': 80,
            'display': 'none'
        });

    }
    else if (containerClass === "dummyFrmTagsInputContainer") {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': 80,
            'display': 'none'
        });

    }
    else if (containerClass === "dummyMoreView") {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': 122,
            'display': 'none'
        });

    }
    else {
        PopupContainer.css({
            'left': parseInt((parseInt(wndWidth) - parseInt(PopupContainer.width())) / 2) - 6,
            'top': wndHieght / 2 - (PopupContainer.height() / 2),
            'display': 'none'
        });
    }




    $(".dummyGridOverlay").show();
}
function hideOverLay() {
    $(".dummyGridOverlay").hide();
}
/**********************  Ajax DataBase Call *********** ********/

/*********** Get All Category Source ************/
function loadCategories(callback) {
    var postData;
    postData = { intOperationType: 7 };

    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objCategoryItems) {
            glbCategoryItems = objCategoryItems;
            callback(glbCategoryItems);
        },

        error: function() {

            alert("Error While Retrieving Categories");

        }
    });


}
function loadAllCategorySource(callback) {
    var postData;
    if (glbUserLoggedIn)
        postData = { intOperationType: 1, intUserIdx: glbUser.Id };
    else
        postData = { intOperationType: 1 };

    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objDataSourceItems) {
            glbDataSourceItems = objDataSourceItems;
            callback(glbDataSourceItems);
        },

        error: function() {

            alert("Error While Retrieving Data Source Items");

        }
    });


}
/*********** Get Single Category Source ************/
function loadCategorySource(Idx, callback) {
    var postData = { intOperationType: 2, Idx: Idx, intUserIdx: glbUser.Id }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objDataSourceItem) {
            glbSelectedDataSourceItem = objDataSourceItem;
            callback(glbSelectedDataSourceItem);
        },

        error: function() {

            alert("Error While Data Source Item");

        }
    });


}

/*********** Adding Category Source to user favourite************/
function createUserFavourite(userIdx, categorySourceIdx, callback) {
    var postData = { intOperationType: 1, intUserIdx: userIdx, intCategorySourceIdx: categorySourceIdx }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "text",
        data: postData,
        success: function() {
            callback();
        },

        error: function() {

            alert("Error While Adding Source As Favourite");

        }
    });


}

/*********** Delete Category Source from user favourite************/
function deleteUserFavourite(userIdx, categorySourceIdx, callback) {
    var postData = { intOperationType: 2, intUserIdx: userIdx, intCategorySourceIdx: categorySourceIdx }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "text",
        data: postData,
        success: function() {
            callback();
        },

        error: function() {

            alert("Error While Deleting Source As Favourite");

        }
    });
}
/*********** Update Category Source Rating************/
function updateCategorySourceRating(userIdx, score, categorySourceIdx, callback) {
    var postData = { intOperationType: 3, intUserIdx: userIdx, dblScore: score, intCategorySourceIdx: categorySourceIdx }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objRating) {
            callback(objRating);
        },

        error: function() {

            alert("Error While Updating Rating");

        }
    });
}
/*********** Regitser User************/
function checkUserExist(strEmail, callback) {
    var postData =
    {
        intOperationType: 14,
        email: strEmail
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "text",
        data: postData,
        success: function(strResponse) {
            callback(strResponse);
        },

        error: function() {
            alert("Error While Checking User Exist");
        }
    });
}
function createUser(callback) {
    var postData =
    {
        intOperationType: 4,
        firstName: $(".dummyRegFrmFirstName").val(),
        lastName: $(".dummyRegFrmLastName").val(),
        organization: $(".dummyRegFrmOrg").val(),
        title: $(".dummyRegFrmTitle").val(),
        phone: $(".dummyRegFrmPhone").val(),
        email: $(".dummyRegFrmEmail").val(),
        IsAdmin: false,
        IsActive: true,
        IsLocked: false
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objUser) {
            callback(objUser);
        },

        error: function() {

            alert("Error While Registering User");

        }
    });
}
function loadUser(userId, callback) {
    var postData =
    {
        intOperationType: 4,
        intUserId: userId
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objUser) {
            callback(objUser);
        },

        error: function() {

            alert("Error While Loading User");

        }
    });
}
function createSession(strSessionName, strSessionValue, callback) {
    var postData =
    {
        intOperationType: 1,
        SessionName: strSessionName,
        SessionValue: strSessionValue
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/utilities/ManageSession.aspx",
        dataType: "json",
        data: postData,
        success: function(objSession) {
            if (callback != undefined)
                callback(objSession);
        },

        error: function() {
            alert("Error While Creating Session");
        }
    });
}
function checkSession(strSessionName, callback) {
    var postData =
    {
        intOperationType: 3,
        SessionName: strSessionName
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/utilities/ManageSession.aspx",
        dataType: "json",
        data: postData,
        success: function(objSession) {
            if (callback != undefined)
                callback(objSession);
        },

        error: function() {
            alert("Error While Checking Session");
        }
    });
}
function destroySession(strSessionName, callback) {
    var postData =
    {
        intOperationType: 2,
        SessionName: strSessionName
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/utilities/ManageSession.aspx",
        dataType: "json",
        data: postData,
        success: function(objSession) {
            if (callback != undefined)
                callback(objSession);
        },

        error: function() {
            alert("Error While Destroying Session");
        }
    });
}
function sendMail(emailObject, intUserIdx, intOperationType, callback) {
    var postData =
      { intOperationType: intOperationType,
          strMailTo: emailObject.toAddress,
          strMailCC: emailObject.CcAddresses,
          strMailBCC: emailObject.BccAddresses,
          strMailSubject: emailObject.subject,
          strMailBody: emailObject.body,
          blnMailBodyAsHTML: emailObject.isHtmlFormat,
          intUserIdx: intUserIdx
      }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/utilities/SendMail.aspx",
        dataType: "text",
        data: postData,
        success: function(objResponse) {
            if (callback != undefined)
                callback(objResponse);
        },

        error: function() {
            alert("Error While Sending Session");
        }
    });
}

/*********** Login User************/
function signInUser(strEmail, strPassword, callback) {
    var postData =
    {
        intOperationType: 5,
        strEmail: strEmail,
        strPassword: strPassword
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objUser) {
            callback(objUser);
        },

        error: function() {

            alert("Error While Signing In User");

        }
    });
}
function loadUserByEmail(strEmail, callback) {
    var postData =
    {
        intOperationType: 6,
        strEmail: strEmail
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objUser) {
            callback(objUser);
        },

        error: function() {

            alert("Error while getting user by Email");

        }
    });
}
/*********** Add New Category Source************/

function createCategorySource(strTagIds,callback) {
    var postData =
    {
        intOperationType: 6,
        intUserIdx: glbUser.Id,
        intCategoryIdx: $(".dummyFrmCatSrcCategory").val(),
        strTitle: $(".dummyFrmCatSrcTitle").val(),
        strShortDesc:htmlEncode($(".dummyFrmCatSrcShortDescription").val()),
        strLongDesc: htmlEncode($(".dummyFrmCatSrcLongDescription").val()),
        strBusinessBenefits: htmlEncode($(".dummyFrmCatSrcBusinessBenefits").val()),
        strAuthor: $(".dummyFrmCatSrcAuthor").val(),
        strWebsite: $(".dummyFrmCatSrcWebSite").val(),
        blnActive: false,
        blnConsumable: false,
        blnOpenInNewWindow: $(".dummyFrmCatSrcOpenInNewWindow").is(':checked'),
        strTagIds: strTagIds
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objCategorySource) {
            callback(objCategorySource);
        },

        error: function() {

            alert("Error While Adding Category Source");

        }
    });
}
/*********** Update Category Source************/

function updateCategorySource(Idx, strTagIds,callback) {
    var postData =
    {
        intOperationType: 7,
        intIdx: Idx,
        intUserIdx: glbUser.Id,
        intCategoryIdx: $(".dummyFrmCatSrcCategory").val(),
        strTitle: $(".dummyFrmCatSrcTitle").val(),
        strShortDesc: htmlEncode($(".dummyFrmCatSrcShortDescription").val()),
        strLongDesc: htmlEncode($(".dummyFrmCatSrcLongDescription").val()),
        strBusinessBenefits: htmlEncode($(".dummyFrmCatSrcBusinessBenefits").val()),
        strAuthor: $(".dummyFrmCatSrcAuthor").val(),
        strWebsite: $(".dummyFrmCatSrcWebSite").val(),
        blnActive: false,
        blnConsumable: false,
        blnOpenInNewWindow: $(".dummyFrmCatSrcOpenInNewWindow").is(':checked'),
        strTagIds: strTagIds
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objCategorySource) {
            callback(objCategorySource);
        },

        error: function() {

            alert("Error While Updating Category Source");

        }
    });
}

/*********** Delete Category Source************/

function deleteCategorySource(Idx, callback) {
    var postData =
    {
        intOperationType: 8,
        intIdx: Idx,
        intUserIdx: glbUser.Id

    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objCategorySource) {
            callback(objCategorySource);
        },

        error: function() {

            alert("Error While Deleting Category Source");

        }
    });
}
function updateCategorySourceStatus(Idx,blnActive, callback) {
    var postData =
    {
        intOperationType: 11,
        intIdx: Idx,
        intUserIdx: glbUser.Id,
        blnActive: blnActive
        
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objCategorySource) {
            callback(objCategorySource);
        },

        error: function() {

            alert("Error While Updating Category Source Status");

        }
    });
}
/*********** Update Password************/

function updatePassword(objUser,callback) {
    var postData =
    {
        intOperationType: 9,
        intUserIdx: objUser.Id,
        strPassword:objUser.Password
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(ObjUser) {
            callback(ObjUser);
        },

        error: function() {

            alert("Error While updating password");

        }
    });
}
function ajaxUploadLogo(fileId, strFileName,callback) {

    $.ajaxFileUpload
		(
			{
			    url: '../framework/JsonServices/utilities/FileManagement.aspx?intOperationType=1&strFileName=' + strFileName,
			    secureuri: false,
			    fileElementId: fileId,
			    dataType: 'test',
			    success: function(data, status) {
			       callback();
			    },
			    error: function(data, status, e) {
			        alert('Error while uploading logos');
			    }
			}
		)

    return false;

}
function loadAllUser(callback) {
    var postData =
    {
        intOperationType: 8
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objUsers) {
            glbAllUsers = objUsers;
            callback(objUsers);
        },

        error: function() {

            alert("Error While Loading Users");

        }
    });
}
function updateUserAdminStatus(objUser) {
    var postData =
    {
        intOperationType: 10,
        intUserIdx: objUser.Id,
        isAdmin: objUser.IsAdmin,
        intUpdatedBy: glbUser.Id,
        blnCopyEmail: objUser.CopyEmail
        
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function() {
            
        },
        error: function() {

            alert("Error While Saving User Admin Role");

        }
    });
}

/********************** utility functions *********** ********/
/**********Action List:To store callback functions and execute after user based actions-  ***************/
function ActionsList(callbacklist) {
    this.actionList = callbacklist;
    this.execute = function() {
        for (var idx = 0; idx < this.actionList.length; idx++) {
            this.actionList[idx]();

        }
    }
}
function clearActionList(){objActions=new ActionsList([]);}
/**********Custom Alert Window ***************/
function showAlertWindow(mgsHeader, msgBody, callbackOnOk, callbackOnCancel, callbackOnClose,isConfirmation) {
    $(".dummyAlertWindowHeading").html(mgsHeader);
    $(".dummyAlertWindowMsg").html(msgBody);
    $(".dummyAlertWindow").css({
    'left': parseInt((parseInt(wndWidth) - parseInt($(".dummyAlertWindow").width())) / 2) - 6,
    'top': wndHieght / 2 - ($(".dummyAlertWindow").height() / 2),
    'z-index': 202   
    });
    $(".dummyAlertWindow").show();
    if (!isConfirmation)
        $(".dummyAlertWindowBtnCancel").hide();
    else {
        $(".dummyAlertWindowBtnCancel").show().unbind("click").bind("click", function() {
        $(".dummyAlertWindow").hide();
            if(callbackOnCancel!=null)
                callbackOnCancel();
        });
    }
    $(".dummyAlertWindowBtnOk").show().unbind("click").bind("click", function() {
        $(".dummyAlertWindow").hide();
        if (callbackOnOk != null)
            callbackOnOk();
    });
    $(".dummyAlertWindowCloseBtn").show().unbind("click").bind("click", function() {
        $(".dummyAlertWindow").hide();
        if (callbackOnClose != null)
            callbackOnClose();
    });
}
/*** Grid Sorting Function ***********/
function str_CISorting(a, b, order) {    // custom sorting for case insensitive sorting in dhtmlx grid
   // if (a.toLowerCase() == b.toLowerCase())
   //     return 1;
        
    if (order == "asc")
        return (a.toLowerCase() > b.toLowerCase() ? 1 : -1);
    else
        return (a.toLowerCase() > b.toLowerCase() ? -1 : 1);
}
function GetColSortingString(curStr) {
    var retStr = "";
    var tempArr = curStr.split(",");
    for (var cnt = 0; cnt <= tempArr.length - 1; cnt++) {
        if (tempArr[cnt] == "str")
            retStr += "str_CISorting,";
        else if (tempArr[cnt] == "date")
            retStr += "date_CustomSorting,";
        else if (tempArr[cnt] == "int")
            retStr += "int_CustomSorting,";
        else
            retStr += tempArr[cnt] + ",";
    }
    retStr = retStr.substring(0, retStr.length - 1);
    return retStr;
}
function date_CustomSorting(a, b, order) {
    a = a.split("/")
    b = b.split("/")
    if (a[2] == b[2]) {
        if (a[1] == b[1])
            return (a[0] > b[0] ? 1 : -1) * (order == "asc" ? 1 : -1);
        else
            return (a[1] > b[1] ? 1 : -1) * (order == "asc" ? 1 : -1);
    } else
        return (a[2] > b[2] ? 1 : -1) * (order == "asc" ? 1 : -1);
}
function int_CustomSorting(a, b, order) {

    a = parseFloat($(a).html());
    b = parseFloat($(b).html());

    if (order == "asc")
        return (a > b ? 1 : -1);
    else
        return (a > b ? -1 : 1);
}
/*** Encode And Decode Function ***********/
function htmlEncode(value) {
    return $('<div/>').text(value).html();
}

function htmlDecode(value) {
    return $('<div/>').html(value).text();
}
function convertjsonDateToClientDate(strInput) {
    dtReg = new Date(parseInt(strInput.substr(6)));
    curr_date = "00" + dtReg.getDate();
    curr_date = curr_date.substring(parseInt(curr_date.length - 2), curr_date.length);
    curr_month = dtReg.getMonth();
    curr_month++;
    curr_month = "00" + curr_month;
    curr_month = curr_month.substring(parseInt(curr_month.length - 2), curr_month.length);
    curr_year = dtReg.getFullYear();
    return curr_month + "/" + curr_date + "/" + curr_year;
}
