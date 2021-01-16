var glbCategoryId;
var glbFilterText = "";
var glbDataSourceItems;
var glbSelectedDataSourceItem;
var objDataSourceGrid;
var recordsPerPage;
var glbUser;
var glbUserLoggedIn = false;
var glbActiveTab = "";
var glbUserSessionKey = "DH_UserId";
var _html;
$(document).ready(function() {
    $.ajaxSetup({
        cache: false
    });
    // this needs to check for logged in Session User
   checkSession(glbUserSessionKey,postCheckSession)
       
});
function postCheckSession(objSession){
 
        if(objSession.Value !="")
        {
            loadUser(objSession.Value, postLoadUser)
        }
        else
        {
            loadPage();
        }
    
}

function postLoadUser(objUser) {
    setUserLoggedIn(true);
    setUser(objUser);
    $(".dummyWelcome").html("Welcome " + objUser.Email);
    $(".dummySignIn").hide();
    $(".dummySignOut").show().unbind("click").bind("click", function() {
        destroySession(glbUserSessionKey, postSignOutAction);
    }); 
    loadPage();
}



function loadPage()
{
   
    recordsPerPage = $(".dummyDdResultsPerPage").val();
    glbCategoryId = getQuerystring("catId", "")
    reSetSearch();
    reSetCategoryNavLinks();
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
        $(".dummyFrmRegister").hide();
        $(".dummyDataSource").hide();
        reSetSearch();
        showSignInForm();
    });
    
    $(".dummySearchBtn").unbind("click").bind("click", function() {
        doSearch();
    });
    $(".dummyDdSorting").unbind("change").bind("change", function() {
        doSort();
    });
    $(".dummyDdResultsPerPage").unbind("change").bind("change", function() {
        doChangePerPage();
    });
    $(".dummySearchBox").unbind("blur").bind("blur", function() {
        if ($(this).val() === "") {
            $(this).val("Search");
            $(this).removeClass("inputTxt").addClass("inputTxtDis");
        }
    }).unbind("focus").bind("focus", function() {
        if ($(this).val() === "Search") {
            $(this).val("");
            $(this).removeClass("inputTxtDis").addClass("inputTxt");
        }
    });
    $(".dummySearchBox").unbind("keyup").bind("keyup", function() {
        doSearch();
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
}
function postSignOutAction() {
    setUserLoggedIn(false);
    setUser(null);
    $(".dummyWelcome").html("Welcome guest");
    $(".dummySignIn").show();
    $(".dummySignOut").hide();
    loadPage();
}
function buildDataSourceGrid(datafeed) {
    $("#dataSourceList").html("");
    $("#pagingArea").html("");
    $("#recinfoArea").html("");
    objDataSourceGrid = "";
    objDataSourceGrid = new dhtmlXGridObject('dataSourceList');
    objDataSourceGrid.setImagePath("../../plugins/dhtmlxGrid/codebase/imgs/");
    objDataSourceGrid.setHeader("&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;,&nbsp;"); 
 
    objDataSourceGrid.setInitWidths("150,190,*,90,0,0,0,0,0");
    objDataSourceGrid.setColAlign("left,left,left,left,left,left,left,left,left");
    objDataSourceGrid.setColVAlign("top,middle,top,top,middle,middle,middle,middle,middle");
    objDataSourceGrid.setColTypes("TitleAndRating,Image,ShortDescription,Favourite,ro,ro,ro,ro,ro");
    objDataSourceGrid.setColSorting("na,na,na,na,na,str,str,na,na");
    objDataSourceGrid.enablePaging(true, recordsPerPage, 5, "pagingArea", true, "recinfoArea");
    objDataSourceGrid.setPagingTemplates("[prevpages:Previous:][currentpages:][nextpages:Next:]", "Total records [total] found");
    objDataSourceGrid.enableMultiline(true);
    //if (glbUserLoggedIn)//show favouriteColumn: //this is bug from dhtmlxgrid
        objDataSourceGrid.setColumnsVisibility("false,false,false,false,true,true,true,true,true");
   // else
     //   objDataSourceGrid.setColumnsVisibility("false,false,false,true,true,true,true,true,true"); 
        
    objDataSourceGrid.init();
    objDataSourceGrid.setSkin("dhx_skyblue");
    objDataSourceGrid.detachHeader(0);
    objDataSourceGrid.enableCellIds(true);
    //Loading Data
    //objDataSourceGrid.parse(getJsonDataDhtmlxFormat(datafeed), "json");
    
    if (glbCategoryId == "") glbCategoryId = 1;
    loadByCategory(glbCategoryId);
    doSort();
    objDataSourceGrid.attachEvent("onMouseOver", function(id, index) {
        if (index == 0) {
            return false; 
        }
    });
    objDataSourceGrid.attachEvent("onAfterSorting", function(index, type, direction) {
        attachRating();
       
    });
   

    objDataSourceGrid.attachEvent("onFilterEnd", function(elements) {
        attachRating();
     
    });
    objDataSourceGrid.attachEvent("onPageChanged", function(ind, fInd, lInd) {
        attachRating();
   });
   

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
        if(feedFromServer[i].LogoUrl!=undefined && feedFromServer[i].LogoUrl!=null)
            arrData.push(feedFromServer[i].LogoUrl);
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
            cellHtml = "<div class='datasourceImg'><img src='../appImgs/" + val + "' /></div>";


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

            cellHtml = "<div class='datasourceCell'>" + val;
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
                    cellHtml += "<img src='../themes/imgs/delete.gif' align='left' hspace='5' />";
                    cellHtml += "</div>";
                    cellHtml += "<div class='datasourceCell dummyFavouriteCell_" + cell.id.split("_")[1] + "' style='display:none;'><img src='../themes/imgs/favorite.png'  hspace='5' /></div>";
                }
                else {

                    cellHtml = "<div class='datasourceCell dummyFavouriteDeleteCell_" + cell.id.split("_")[1] + "' style='display:none;cursor:pointer;' title='Remove' onclick='removeFromUserFavourite(" + cell.id.split("_")[1] + ");'>";
                    cellHtml += "<img  src='../themes/imgs/delete.gif' align='left' hspace='5' />";
                    cellHtml += "</div>";
                    cellHtml += "<div class='datasourceCell dummyFavouriteCell_" + cell.id.split("_")[1] + "'><img src='../themes/imgs/favorite.png'  hspace='5'/></div>";
                }
                cellHtml += "<div class='datasourceCell dummyFavouriteAddCell_" + cell.id.split("_")[1] + "' title='Favorite<' style='display:none;cursor:pointer;' onclick='addToUserFavourite(" + cell.id.split("_")[1] + ");'>";
                cellHtml += "<img src='../themes/imgs/addFavorite.png' align='left' hspace='5' />";
                cellHtml += "</div>";

            }
            else {
                cellHtml = "<div class='datasourceCell dummyFavouriteDeleteCell_" + cell.id.split("_")[1] + "' style='cursor:pointer;display:none;' title='Remove'  onclick='removeFromUserFavourite(" + cell.id.split("_")[1] + ");'>";
                cellHtml += "<img src='../themes/imgs/delete.gif' align='left' hspace='5' />";
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
            cellHtml +="<div id='divRatingContainer_" + cell.id.split("_")[1] + "' class='divRatingContainer'></div>";
            cellHtml += "<span style='display:none'>" + fltRating + "</span></div>";
        }
        this.setCValue(cellHtml);
    }
}
eXcell_TitleAndRating.prototype = new eXcell;    // nest all other methods from base class


function loadByCategory(categoryid) {
    $(".dummyDataSource").show();
    $(".dummyFrmRegister").hide();
    $(".dummyFrmSignIn").hide();
    $("#topNavHeader").removeClass().addClass("selNavLink" + categoryid);
    reSetSearch();
    glbCategoryId = categoryid;
    glbActiveTab = categoryid;
    objDataSourceGrid.clearAll();
    objDataSourceGrid.enablePaging(true, recordsPerPage, 5, "pagingArea", true, "recinfoArea");
    objDataSourceGrid.parse(getJsonDataDhtmlxFormat(glbDataSourceItems), "json"); 
    objDataSourceGrid.filterBy(6, categoryid, true);
    attachRating();
  }
function loadUserFavourites() {
    $(".dummyDataSource").show();
    $(".dummyFrmRegister").hide();
    $(".dummyFrmSignIn").hide();
    $("#topNavHeader").removeClass().addClass("selNavLink0");
    reSetSearch();
    glbActiveTab = 0;
    objDataSourceGrid.clearAll();
    objDataSourceGrid.enablePaging(true, recordsPerPage, 5, "pagingArea", true, "recinfoArea");
    objDataSourceGrid.parse(getJsonDataDhtmlxFormat(glbDataSourceItems), "json");
    objDataSourceGrid.filterBy(7, "1",true);
    attachRating();
  }
function doSearch()
{
  $(".dummyDataSource").show();
  $(".dummyFrmRegister").hide();
  $(".dummyFrmSignIn").hide();
  reSetCategoryNavLinks();
  var strFilter = $(".dummySearchBox").val();
  glbActiveTab = "";
  objDataSourceGrid.clearAll();
  objDataSourceGrid.enablePaging(true, recordsPerPage, 5, "pagingArea", true, "recinfoArea");
  objDataSourceGrid.parse(getJsonDataDhtmlxFormat(glbDataSourceItems), "json");
  objDataSourceGrid.filterBy(2,strFilter,true);
  attachRating();
 
}
function reSetSearch() {
    $(".dummySearchBox").val("Search");
    $(".dummySearchBox").removeClass("inputTxt").addClass("inputTxtDis");
}
function reSetCategoryNavLinks() {
    $("#topNavHeader").removeClass();
}

function doSort() {
    $(".dummyDataSource").show();
    $(".dummyFrmRegister").hide();
    $(".dummyFrmSignIn").hide();
    if ($(".dummyDdSorting").val() == "5") {
       objDataSourceGrid.sortRows(5, "int", "des");
    }
    else if ($(".dummyDdSorting").val() == "4") {
       objDataSourceGrid.sortRows(4, "str", "asc");
    }
}
function doChangePerPage() {
    $(".dummyDataSource").show();
    $(".dummyFrmRegister").hide();
    $(".dummyFrmSignIn").hide();
    recordsPerPage = $(".dummyDdResultsPerPage").val();
    if (glbActiveTab === "") {
        doSearch();
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
    if(glbUserLoggedIn)
    {
        loadCategorySource(itemId,showMoreView);
    }
    else 
    {
        $(".dummyDataSource").hide();
        showRegisterForm();
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
   if (objDataSource.Name != undefined)
        $(".dummyMoreViewTitle").html(objDataSource.Name);
   if(objDataSource.LogoUrl!=undefined)
        $(".dummyMoreViewLogoImg").html("<img src='../appImgs/"+ objDataSource.LogoUrl +"' width='300px' height='185px' />");
    if (objDataSource.AverageRating != undefined) {
        DisplayMoreViewRating("dummyMoreViewRating", objDataSource.AverageRating, objDataSource.Id);

    }
    if (objDataSource.RatingCount != undefined) {
        DisplayMoreViewRatingCount("dummyMoreViewRatingCount", objDataSource.RatingCount);
    }
    if (objDataSource.Author != undefined) {
        $(".dummyMoreViewAuthor").html(objDataSource.Author); 
    }



//    if (objDataSource.isUserFavourite != undefined) {
//        
//        if (objDataSource.isUserFavourite) {
//            if (glbActiveTab === 0) {
//                _html = "<div class='datasourceCell dummyFavouriteDeleteCell_" + objDataSource.Id + "' title='Remove from favourites'";
//                _html += "style='cursor:pointer;' onclick='removeFromUserFavourite(" + objDataSource.Id + ");changeMoreViewFavIcon(" + objDataSource.Id + ",false);'>";
//                _html += "<img src='../themes/imgs/delete.gif' align='left' hspace='5' />";
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
            $(".dummyMoreViewDescription").html(objDataSource.LongDescription);
        else {
            if (objDataSource.ShortDescription != "")
                $(".dummyMoreViewDescription").html(objDataSource.ShortDescription);
        }
    }
    else {
        if (objDataSource.ShortDescription != "")
            $(".dummyMoreViewDescription").html(objDataSource.ShortDescription);
    }
   
    if (objDataSource.WebsiteUrl != undefined) {
        if (objDataSource.WebsiteUrl != "")
            $(".dummyMoreViewWebSite").html("<a onclick='showWebSite();'>Visit Website</a>");
    }
    showOverLay("dummyMoreView");
    $(".dummyMoreView").show();
    $(".dummyMoreViewCloseBtn").unbind("click").bind("click", function() {
        $(".dummyMoreView").hide();
        hideOverLay();
    });
}

function changeMoreViewFavIcon(id,toFavourite) {
    
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

function showWebSite() {
    $(".dummyBrowseWebSite").draggable();
    objDataSource = glbSelectedDataSourceItem;
    hideOverLay();
    showOverLay("dummyBrowseWebSite");
    $(".dummyMoreView").hide();
    $(".dummyBrowseWebSiteTitle").html("");
    $(".dummyBrowseWebSiteFrame").attr("src", "");
    if (objDataSource.Name != undefined)
        $(".dummyBrowseWebSiteTitle").html(objDataSource.Name);

    $(".dummyBrowseWebSiteFrame").attr("src", objDataSource.WebsiteUrl).show();
    $(".dummyBrowseWebSite").show();
    $(".dummyBrowseWebSiteCloseBtn").unbind("click").bind("click", function() {
        $(".dummyBrowseWebSiteFrame").attr("src", "")
        $(".dummyBrowseWebSite").hide();
        showOverLay("dummyMoreView");
        $(".dummyMoreView").show();
    });
    
}
function addToUserFavourite(categorySourceIdx)
{
    if (!glbUserLoggedIn) {
        $(".dummyDataSource").hide();
        showRegisterForm();
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

    objDataSourceGrid.setRowHidden(categorySourceIdx,true)
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
function changeRating(containerId,score, id) {
    updateCategorySourceRating(glbUser.Id, score, id, postRatingChange);
    function postRatingChange(objRating) {
        updateClientDataSourceItem(id, "AverageRating", objRating.AverageRating);
        DisplayMoreViewRating(containerId, objRating.AverageRating, id);
        DisplayMoreViewRatingCount("dummyMoreViewRatingCount", objRating.RatingCount);
        ChangeListRating("divRatingContainer_" + id, objRating.AverageRating)
    }
}
function ChangeListRating(containerId,newScore) {
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
function DisplayMoreViewRating(containerId, startScore, SourceId)
{
    $("#"+ containerId).html("");
    $("#" + containerId).raty({
            hintList: ['', '', '', '', ''],
            starOn: 'star-on.png',
            starOff: 'star-off.png',
            path: "../plugins/rating/img/",
            showHalf: true,
            start: startScore,
            number: 5,
            onClick: function(score) {
                changeRating("dummyMoreViewRating",score, SourceId)
            }
        });
    }
    
    function DisplayMoreViewRatingCount(containerId, ratingCount)
    {
        $("." + containerId).html("");
        $("." + containerId).html("Rated by "+ ratingCount + " users");
    }
function updateClientDataSourceItem(Id, columnId, data) {;
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
function showOverLay(containerClass) {
    var PopupContainer = $("." + containerClass);
    var wndHeight = document.body.offsetHeight;
    var wndWidth =  document.body.offsetWidth-2;
    $(".dummyGridOverlay").css("height", wndHeight);
    $(".dummyGridOverlay").css("width", wndWidth);
    PopupContainer.css({
        'left': wndWidth / 2 - (PopupContainer.width() / 2),  // half width - half element width
        'top': wndHeight / 2 - (PopupContainer.height() / 2), // similar 
        'z-index': 1002, // make sure element is on top
        'position': 'absolute',
        'display': 'none'
    });
    $(".dummyGridOverlay").show();
}
function hideOverLay() {
    $(".dummyGridOverlay").hide();
}

/****************** Registration Process ************************/
function showRegisterForm(){
    $(".dummyFrmRegister").show();
    $(".dummyRegFrmSignIn").unbind("click").bind("click", function() {
        $(".dummyFrmRegister").hide();
        showSignInForm();
    });
    $(".dummyRegFrmSubmitBtn").unbind("click").bind("click", function() {
        if (validateRegisterForm) {
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
            alert("User with this email: " + $(".dummyRegFrmEmail").val() + " already exist");
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
       return true;
}
function clearRegisterForm() {
    $(".dummyRegFrmFirstName").val("");
    $(".dummyRegFrmLastName").val("");
    $(".dummyRegFrmOrg").val("");
    $(".dummyRegFrmTitle").val("");
    $(".dummyRegFrmEmail").val("");
    $(".dummyRegFrmPhone").val("");
}
function sendRegisterEmail(objUser) {
    var strEmailSubject="DecisionHub:Your Registration";
    var strEmailBody="<p>Your password is : "+ objUser.Password+ "</p><br/>Use this password to login next time and change your password.";
    var objEmail = new emailObject("", objUser.Email, strEmailSubject, strEmailBody, true, "", "");
    sendMail(objEmail,null)
    
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
function showSignInForm() {
    $(".dummyFrmSignIn").show();
    $(".dummySignInFrmBtnSubmit").unbind("click").bind("click", function() {
    if (validateSignInForm) {
        signInUser($(".dummySignInFrmEmail").val(),$(".dummySignInFrmPassword").val(), postSignInUser)

    }
    else
        return false;
    });
    clearSignInForm();
    
}
function clearSignInForm() {
    $(".dummySignInFrmEmail").val("");
    $(".dummySignInFrmPassword").val("");
    $(".dummySignInFrmRemCheck").removeAttr("checked");
}
function validateSignInForm() {
    return true;
}
function postSignInUser(objUser) {
    if (objUser.Id === "0") {
        alert("Either email or password is wrong");
        $(".dummySignInFrmEmail").focus();
    }
    else {
        postLoadUser(objUser);
        createSession(glbUserSessionKey, glbUser.Id, null);
    }
}
/**********************  Ajax DataBase Call *********** ********/

/*********** Get All Category Source ************/
function loadAllCategorySource(callback) {
    var qryString = "";
    if (glbUserLoggedIn)
        qryString = "?intOperationType=1&intUserId=" + glbUser.Id;
    else
        qryString = "?intOperationType=1";
    $.ajax({
        type: "GET",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx" + qryString,
        dataType: "json",
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
function loadCategorySource(Idx,callback) {
    var qryString = "";
    qryString = "?intOperationType=2&Idx=" + Idx + "&intUserId=" + glbUser.Id
    $.ajax({
        type: "GET",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx" + qryString,
        dataType: "json",
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
    var postData = { intOperationType: 1, intUserIdx: userIdx, intCategorySourceIdx: categorySourceIdx}
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx" ,
        dataType: "text",
        data:postData,
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
function updateCategorySourceRating(userIdx,score, categorySourceIdx, callback) {
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
function checkUserExist(strEmail,callback) {
    var postData =
    {
        intOperationType: 1,
        email: strEmail
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/CheckFromDataBase.aspx",
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
        firstName:$(".dummyRegFrmFirstName").val(), 
        lastName:$(".dummyRegFrmLastName").val(), 
        organization:$(".dummyRegFrmOrg").val(), 
        title:$(".dummyRegFrmTitle").val(), 
        phone:$(".dummyRegFrmPhone").val(), 
        email:$(".dummyRegFrmEmail").val(),
        IsAdmin:false,
        IsActive:true,
        IsLocked:false
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
function loadUser(userId,callback) {
    var postData =
    {
        intOperationType: 4,
        intUserId:userId
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
function createSession(strSessionName,strSessionValue,callback) {
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
            if(callback!=undefined)
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
function sendMail(emailObject, callback) {
    var postData =
    {   strMailTo: emailObject.toAddress,
        strMailCC: emailObject.CcAddresses,
        strMailBCC:emailObject.BccAddresses,
        strMailSubject:emailObject.subject,
        strMailBody:emailObject.body,
        blnMailBodyAsHTML: emailObject.isHtmlFormat
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
function signInUser(strEmail,strPassword, callback) {
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