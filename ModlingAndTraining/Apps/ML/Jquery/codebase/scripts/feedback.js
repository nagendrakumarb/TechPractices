var glbFeedbackCategories;
var glbFeedbacks;
var glbFeedbackResponses;
var objFeedbacksListGrid;
var feedbacksListRecordsPerPage;

function renderPage(type) {
    if (type == "input") {
        showFeedbackInputForm();
        $(".dummyFeedbackListForm").html(""); 
        handleFeedbackInputForm();
    }
    else if (type == "list") {
        $(".dummyFeedbackInputForm").html("");
        showFeedbackListForm();
        loadFeedbacks(glbUser,postLoadFeedbacks);
    }

       
} 
//Feedback Input form actions
function handleFeedbackInputForm() {
    if (glbFeedbackCategories == null)
        loadFeedbackCategories(preAddLoadFeedbackCategories);
    else {
        preAddLoadFeedbackCategories(glbFeedbackCategories);
    }
    //populate form with user properties
    preFillFeedbackUserDetails();
  

    $(".dummyFrmFeedbackCloseBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideFeedbackInputForm();
    });
    $(".dummyFrmFeedbackCancelBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideFeedbackInputForm();
    });
    $(".dummyFrmFeedbackSaveBtn").unbind("click").bind("click", function() {
        if (validateFeedbackInputForm()) {
            if (glbUser == null)
                checkUserExistForFeedback();
            else
                createFeedback(postCreateFeedback);
        }
        else
            return false;
    });
}
function preFillFeedbackUserDetails() {
    if (glbUser != null) {
        $(".dummyFrmFeedbackFirstName").val(glbUser.FirstName).attr("readonly", "readonly").addClass("inputTxtDis");
        $(".dummyFrmFeedbackLastName").val(glbUser.LastName).attr("readonly", "readonly").addClass("inputTxtDis");
        $(".dummyFrmFeedbackEmail").val(glbUser.Email).attr("readonly", "readonly").addClass("inputTxtDis");
    }
}
function preAddLoadFeedbackCategories(objCategories) {
    if (glbFeedbackCategories != null)
        fillFeedbackCategories(objCategories, glbFeedbackCategories);
    else
        fillFeedbackCategories(objCategories, null);
}

function fillFeedbackCategories(objCategories, defaultValue) {
    _html = "<option value=''>Select a subject</option>";
    $(objCategories).each(function(idx) {
        _html += "<option value='" + objCategories[idx].Id + "'>" + objCategories[idx].Name + "</option>";
    });
    $(".dummyFrmFeedbackSubject").html("");
    $(".dummyFrmFeedbackSubject").append(_html);
    if (defaultValue != null)
        $(".dummyFrmFeedbackSubject").val(defaultValue);
}
function validateFeedbackInputForm() {
    var HostValidator = new MachineLearning.ValidationUtils();
    if (HostValidator.isBlank($(".dummyFrmFeedbackFirstName").val())) {
        alert("Please enter your First Name");
        $(".dummyFrmFeedbackFirstName").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmFeedbackLastName").val())) {
        alert("Please enter your Last Name");
        $(".dummyFrmFeedbackLastName").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmFeedbackEmail").val())) {
        alert("Please enter your Email");
        $(".dummyFrmFeedbackEmail").focus();
        return false;
    }
    if (!HostValidator.isValidEmail($(".dummyFrmFeedbackEmail").val())) {
        alert("Please enter a valid Email");
        $(".dummyFrmFeedbackEmail").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmFeedbackSubject").val())) {
        alert("Please select Subject");
        $(".dummyFrmFeedbackSubject").focus();
        return false;
    }
    if (HostValidator.isBlank($(".dummyFrmFeedbackComments").val())) {
        alert("Please enter your Comments");
        $(".dummyFrmFeedbackComments").focus();
        return false;
    }
    return true;
}
function postCreateFeedback(objFeedback)
{
     hideOverLay();
     hideFeedbackInputForm();
     var strEmailSubject = "Machine Learning - Data Modling and Training:Feedback Confirmation";
     var strEmailBody = objFeedback.Comments;
     var objEmail = new emailObject("", $(".dummyFrmFeedbackEmail").val(), strEmailSubject, strEmailBody, true, "", ""); //this is coming from default.js
     sendFeedbackResponseMail(objEmail, "", 5, objFeedback, null)//this is coming from default.js

 }

 function checkUserExistForFeedback() {
     checkUserExist($(".dummyFrmFeedbackEmail").val(), postCheckUserExistForFeedback)//coming from default.js
     function postCheckUserExistForFeedback(strResponse) {
         if (strResponse.toLowerCase() === "false")
            createFeedback(postCreateFeedback);
        else {
            if ($.browser.msie && $.browser.version == '7.0')
                $(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight), "width": parseInt(document.body.offsetWidth) - 2, "z-index": 201 });
            else
                $(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight) + 36, "width": parseInt(document.body.offsetWidth) - 2, "z-index": 201 });
            
            $(".dummyGridOverlay").show();
            showAlertWindow("Machine Learning - Data Modling and Training", "The e-mail you provided is associated with a registered user. To enable tracking of your comments through Feedback History you should Sign In to the Machine Learning - Data Modling and Training. Would you like to access the Sign In page now?", FeedbackAlertOkClick, FeedbackAlertCancelClick, FeedbackAlertCloseClick, true);
         }
            
     }
 }
 function FeedbackAlertOkClick() {
     //$(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight) + 36, "width": parseInt(document.body.offsetWidth) - 2, "z-index": 200 });
    // $(".dummyGridOverlay").css({ "z-index": 200 });
     if ($.browser.msie && $.browser.version == '7.0')
         $(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight), "width": parseInt(document.body.offsetWidth) - 2, "z-index": 200 });
     else
         $(".dummyGridOverlay").css({ "height": parseInt(document.body.offsetHeight) + 36, "width": parseInt(document.body.offsetWidth) - 2, "z-index": 200 });
     
     $(".dummyGridOverlay").hide();
     //All below functions are loading from default.js
     hideFeedbackInputForm();
     hideUserMenuAction();
     hideRegistrationForm();
     hideDataSourceGrid();
     reSetSearch();
     handleSignInForm();
     // objActions = new ActionsList([feedbackInputOverLay, showFeedbackInputForm, preFillFeedbackUserDetails, showFeedbackInputContainer]); //this needs to fire once user signs in
    objActions = new ActionsList([createFeedbackAfterSigningIn]);
    
 }
 function createFeedbackAfterSigningIn()
 {
    createFeedback(createFeedbackAfterSigningIn);
    function createFeedbackAfterSigningIn(objFeedback)
    {
        postCreateFeedback(objFeedback);
        alert("Your feedback has been posted");
    }
 }
 
 function FeedbackAlertCancelClick() {
     $(".dummyGridOverlay").css("z-index", 200);
     createFeedback(createFeedbackWhenCancelClick);
     function createFeedbackWhenCancelClick(objFeedback) {
         postCreateFeedback(objFeedback);
         alert("Your feedback has been posted");
     }
 }
 function FeedbackAlertCloseClick() {
     $(".dummyGridOverlay").css("z-index", 200);
 }
//Feedback list grid functions
function postLoadFeedbacks(objFeedbacks) {
    //$("#grdFeedbacksList").css("height", parseInt(document.body.offsetHeight) - 190);
    $("#grdFeedbacksList").css("height", parseInt(document.body.offsetHeight) - 385);
    buildFeedbacksListGrid(objFeedbacks);
    $(".dummyFeedbackListFormCloseBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideFeedbackListForm();
    });
}

function buildFeedbacksListGrid(datafeed) {
    feedbacksListRecordsPerPage = $(".dummyFeedbackListDdResultsPerPage").val();
    $("#grdFeedbacksList").html("");
    $("#feedbacksListRecinfoArea").html("");
    objFeedbacksListGrid = "";
    objFeedbacksListGrid = new dhtmlXGridObject("grdFeedbacksList");
    objFeedbacksListGrid.setImagePath("../plugins/dhtmlxGrid/codebase/imgs/");
    objFeedbacksListGrid.setHeader("#,Date,Subject,Comments,Name,Email");
    objFeedbacksListGrid.attachHeader("&nbsp;,#text_filter,#text_filter,#text_filter,#text_filter,#text_filter");
    objFeedbacksListGrid.setInitWidths("50,90,120,*,120,150");
    objFeedbacksListGrid.setColAlign("left,left,left,left,left,left");
    objFeedbacksListGrid.setColVAlign("middle,middle,middle,middle,middle,middle");
    objFeedbacksListGrid.setColTypes("ronum,ro,ro,FeedbackCommentsCell,ro,ro");//ronum declaration is in default.js
   // alert(GetColSortingString("int,date,str,str,str,str"));
    objFeedbacksListGrid.setColSorting("na,date,str,str,str,str");
    objFeedbacksListGrid.enableMultiline(false);
    objFeedbacksListGrid.setColumnsVisibility("false,false,false,false,false,false");
    objFeedbacksListGrid.setSkin("dhx_skyblue");
    objFeedbacksListGrid.setPagingWTMode(true, true, false, false);
    objFeedbacksListGrid.enablePaging(true, feedbacksListRecordsPerPage, 5, "feedbacksListRecinfoArea");
    objFeedbacksListGrid.setPagingSkin("toolbar", "dhx_skyblue");
    objFeedbacksListGrid.enableCellIds(true);
    objFeedbacksListGrid.init();
    //Loading Data
    objFeedbacksListGrid.parse(getFeedbacksJsonDataDhtmlxFormat(datafeed), "json");
    setFeedbacksListRecinfoText();
    objFeedbacksListGrid.aToolBar.attachEvent("onClick", function(id) {
    setFeedbacksListRecinfoText();
    SetFeedbackRepliedRowsIndicator();
    });


    objFeedbacksListGrid.attachEvent("onAfterSorting", function(index, type, direction) {
    setFeedbacksListRecinfoText();
    SetFeedbackRepliedRowsIndicator();
    });


    objFeedbacksListGrid.attachEvent("onFilterEnd", function(elements) {
    setFeedbacksListRecinfoText();
    SetFeedbackRepliedRowsIndicator();
    });
    objFeedbacksListGrid.attachEvent("onRowSelect", function(id, ind) {
        var selectedId = objFeedbacksListGrid.getSelectedRowId();
        for (var idx = 0; idx < glbFeedbacks.length; idx++) {
            if ($.trim(selectedId) == glbFeedbacks[idx].Id) {
                handleFeedbackDetails(glbFeedbacks[idx]);
                break;
            }
        }
    });

    $(".dummyFeedbackListDdResultsPerPage").unbind("change").bind("change", function() {
    buildFeedbacksListGrid(glbFeedbacks);
    SetFeedbackRepliedRowsIndicator();
    });

   SetFeedbackRepliedRowsIndicator();
}
function setFeedbacksListRecinfoText() {
    _html = $("#feedbacksListRecinfoArea").find(".dhx_toolbar_text").find("div").html();
    $("#feedbacksListRecinfoArea").find(".dhx_toolbar_text").find("div").html(_html + " of " + objFeedbacksListGrid.rowsBuffer.length);
}
function getFeedbacksJsonDataDhtmlxFormat(feedFromServer) {
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
        arrData.push(i + 1);
        if (feedFromServer[i].CreatedOn != null) {
            arrData.push(convertjsonDateToClientDate(feedFromServer[i].CreatedOn));
        }
        if (feedFromServer[i].Subject != null) {
            arrData.push(feedFromServer[i].Subject.Name);
        }
        if (feedFromServer[i].Comments != null) {
            arrData.push(feedFromServer[i].Comments);
        }
        arrData.push(feedFromServer[i].DisplayName);
        arrData.push(feedFromServer[i].FromEmail);
       
        arrRows.push(new dataSourceItem(feedFromServer[i].Id, arrData));
    }
    JsonDataDhtmlxFormat = JSON.stringify(new dataSources(arrRows));
    return JsonDataDhtmlxFormat;

}
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
}
eXcell_ronum.prototype = new eXcell;    // nest all other methods from base class
//Custom Cell Types:Short Description
function eXcell_FeedbackCommentsCell(cell) {

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

            cellHtml = "<div class='datasourceCell'>"
            if (val.length > 60)
                cellHtml += val.substring(0,59) + "...";
            else
                cellHtml += val;
            cellHtml += "</div>"
        }


        this.setCValue(cellHtml);
    }
}
eXcell_FeedbackCommentsCell.prototype = new eXcell;    // nest all other methods from base class

function SetFeedbackRepliedRowsIndicator() {
    $(glbFeedbacks).each(function(idx) {
        if (objFeedbacksListGrid.doesRowExist(glbFeedbacks[idx].Id)) {
            if (glbFeedbacks[idx].Status == 1) {//1:status:responded
                var cellObj = objFeedbacksListGrid.cellById(glbFeedbacks[idx].Id, 0);
                var $innerDiv = $(cellObj.cell).find("div");
                if (!($innerDiv.hasClass("feedbackUpdateIndicator")))
                    $innerDiv.addClass("feedbackUpdateIndicator");
            }
        }
    });
}
    

function handleFeedbackDetails(objFeedback) {
    $(".dummyFeedbackDetailContainer").show();
    $(".dummyFeedbackLogsContainer").show();
    $(".dummyfeedbackContainerFadeout").hide();
    loadFeedbackResponses(objFeedback, renderFeedbackResponses);
    $(".dummyTabFeedbackComments").parent().removeClass().addClass("insidePaneTab");
    $(".dummyTabFeedbackReply").parent().removeClass().addClass("insidePaneTab");
    $(".dummyTabFeedbackLog").parent().removeClass().addClass("insidePaneTabOn");
    
}
function renderFeedbackResponses(objFeedback, objFeedbackResponses) {
    $(".dummyFeedbackCommentsContainer").hide();
    $(".dummyFeedbackReplyContainer").hide();
    $(".dummyFeedbackLogsContainer").html("").show();
    var _clsName = 'feedbackHistoryComment';
    var responseFound = false;
    $(objFeedbackResponses).each(function(idx) {
        _html = "<div class='feedbackHistoryLabel'>" + objFeedbackResponses[idx].RespondedBy.DisplayName;
        _html += " on " + convertjsonDateToClientDate(objFeedbackResponses[idx].CreatedOn) + "</div>";
        _html += "<div class='" + _clsName + "'>";
        _html += objFeedbackResponses[idx].Comments;
        _html += "</div>";
        if (_clsName == "feedbackHistoryComment")
            _clsName = "feedbackHistoryResponse"
        else
            _clsName = "feedbackHistoryComment"
        $(".dummyFeedbackLogsContainer").append(_html);
        if (idx==0) {
            $(".feedbackHistoryLabel").append("&nbsp;&nbsp;&nbsp;&nbsp;<a class='dummyFeedbackReplyLink'>Reply</a>");
            responseFound = true;
        }
    });
    //add feedback
    _html = "<div class='feedbackHistoryLabel'>" + objFeedback.FromUser.DisplayName;
    _html += " on " + convertjsonDateToClientDate(objFeedback.CreatedOn) + "</div>";
    _html += "<div class='" + _clsName + "'>";
    _html += objFeedback.Comments;
    _html += "</div>";
    $(".dummyFeedbackLogsContainer").append(_html);
    if (!responseFound) {
        $(".feedbackHistoryLabel").append("&nbsp;&nbsp;&nbsp;&nbsp;<a class='dummyFeedbackReplyLink'>Reply</a>");
    }
    $(".dummyFeedbackReplyLink").toggle(function() {
        _html = "<div class='feedbackInsideContainer dummyFeedbackReplyContainer style='dispay:none;'>";
        _html += "<div class='feedbackResponseInput'>";
        _html += "<textarea class='inputTxtNormal  dummyFeedbackReplyComments' maxlength='2000' style='width:98%; height:100px'></textarea>";
        _html += "<div style='padding:5px 0'>";
        _html += "<input type='button' value='OK' class='submitBtn dummyFeedbackReplySaveBtn' />";
        _html += "&nbsp;&nbsp;";
        _html += "<input type='button' value='Cancel' class='submitBtn dummyFeedbackReplyCancelBtn' />";
        _html += "</div>";
        _html += "</div>";
        _html += "</div>";
        $(_html).insertAfter(".dummyFeedbackReplyLink");
        $(".dummyFeedbackReplyComments").focus();
        $(".dummyFeedbackReplySaveBtn").unbind("click").bind("click", function() {
            var HostValidator = new MachineLearning.ValidationUtils();
            if (HostValidator.isBlank($(".dummyFeedbackReplyComments").val())) {
                alert("Please enter your Response");
                $(".dummyFeedbackReplyComments").focus();
                return false;
            }
            if (isUserAdmin(glbUser)) {
                var strEmailSubject = "Machine Learning - Data Modling and Training: Feedback Response";
                var strEmailBody = $(".dummyFeedbackReplyComments").val();
                var objEmail = new emailObject("", objFeedback.FromEmail, strEmailSubject, strEmailBody, true, "", ""); //this is coming from default.js
                sendFeedbackResponseMail(objEmail, glbUser.Id, 4, objFeedback, null)//this is coming from default.js
                alert("Your response has been sent to " + objFeedback.DisplayName);
            }
            else {
                var strEmailSubject = "Machine Learning - Data Modling and Training: Feedback Response";
                var strEmailBody = $(".dummyFeedbackReplyComments").val();
                var objEmail = new emailObject("", objFeedback.FromEmail, strEmailSubject, strEmailBody, true, "", ""); //this is coming from default.js
                sendFeedbackResponseMail(objEmail, glbUser.Id, 6, objFeedback, null)//this is coming from default.js
                alert("Your response has been sent to Machine Learning - Data Modling and Training Administrator");
            }
            updateFeedbackStatus(objFeedback,1);//status to responded
            createFeedbackResponse(objFeedback, glbUser, postCreateResponse);

            $(".dummyFeedbackReplyContainer").hide();

        });
        $(".dummyFeedbackReplyCancelBtn").unbind("click").bind("click", function() {
            $(".dummyFeedbackReplyComments").val("");
            $(".dummyFeedbackReplyContainer").hide();
            $(".dummyFeedbackCommentsContainer").show();
        });
    },
    function() {
        $(".dummyFeedbackReplyContainer").hide();
    });

}
function updateFeedbackStatus(objFeedback,status) {
    $(glbFeedbacks).each(function(idx) {
        if (glbFeedbacks[idx].Id == objFeedback.Id) {
            glbFeedbacks[idx].Status = status
            var cellObj = objFeedbacksListGrid.cellById(glbFeedbacks[idx].Id, 0);
            var $innerDiv = $(cellObj.cell).find("div");
            if (!($innerDiv.hasClass("feedbackUpdateIndicator")))
                $innerDiv.addClass("feedbackUpdateIndicator");
            return 1 > 2;
        }
    });
}
function postCreateResponse(objFeedback, objResponse) {
    loadFeedbackResponses(objFeedback, renderFeedbackResponses);
}

/**********************  Show/Hide Functions *********** ********/
function showFeedbackInputForm() {
    $(".dummyFeedbackInputForm").show();
}
function hideFeedbackInputForm() {
    $(".dummyFeedbackInputForm").hide();
    hideFeedbackInputContainer(); //coming from default.js
}
function showFeedbackListForm() {
    $(".dummyFeedbackListForm").show();
}
function hideFeedbackListForm() {
    $(".dummyFeedbackListForm").hide();
}
/**********************  Ajax DataBase Call *********** ********/

/*********** Get All Category Source ************/
function loadFeedbackCategories(callback) {
    var postData;
    postData = { intOperationType: 9 };

    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objCategoryItems) {
            glbFeedbackCategories = objCategoryItems;
            callback(glbFeedbackCategories);
        },

        error: function() {

            alert("Error While Retrieving FeedbackCategories");

        }
    });


}
function loadFeedbacks(objUser,callback) {
    var postData;
    postData = { intUserIdx:objUser.Id,intOperationType: 10 };
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objFeedbacks) {
            glbFeedbacks = objFeedbacks;
            callback(glbFeedbacks);
        },

        error: function() {

            alert("Error While Retrieving Feedbacks");

        }
    });


}
function loadFeedbackResponses(objFeedback, callback) {
    var postData;
    postData = { intFeedbackIdx: objFeedback.Id, intOperationType: 13 };
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objFeedbackResponses) {
            glbFeedbackResponses = objFeedbackResponses;
            callback(objFeedback,glbFeedbackResponses);
        },

        error: function() {

            alert("Error While Retrieving Feedback Responses");

        }
    });


}
function createFeedback(callback) {
    var intUserIdx;
    if (glbUser != null)
        intUserIdx = glbUser.Id
    else
        intUserIdx = ""
    var postData =
    {
        intOperationType: 12,
        firstName: $(".dummyFrmFeedbackFirstName").val(),
        lastName: $(".dummyFrmFeedbackLastName").val(),
        email: $(".dummyFrmFeedbackEmail").val(),
        subject: $(".dummyFrmFeedbackSubject").val(),
        comments: htmlEncode($(".dummyFrmFeedbackComments").val()),
        intUserIdx: intUserIdx
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objFeedback) {
        callback(objFeedback);
        },

        error: function() {

            alert("Error While Sending Feedback");

        }
    });
}
function createFeedbackResponse(objFeedback,objUser,callback) {
    var postData =
    {
        intOperationType: 16,
        intUserIdx: objUser.Id,
        intFeedbackIdx:objFeedback.Id,
        comments: htmlEncode($(".dummyFeedbackReplyComments").val())
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objResponse) {
            callback(objFeedback,objResponse);
        },

        error: function() {

            alert("Error While Replying Feedback");

        }
    });
}
function sendFeedbackResponseMail(emailObject, intUserIdx, intOperationType, objFeedback,callback) {
    var postData =
      {   intOperationType: intOperationType,
          strMailTo: emailObject.toAddress,
          strMailCC: emailObject.CcAddresses,
          strMailBCC: emailObject.BccAddresses,
          strMailSubject: emailObject.subject,
          strResponseContent: emailObject.body,
          blnMailBodyAsHTML: emailObject.isHtmlFormat,
          intUserIdx: intUserIdx,
          intFeedbackId: objFeedback.Id,
          strFeedbackFirstName: objFeedback.FromFirstName,
          strFeedbackLastName: objFeedback.FromLastName
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