var glbInputTags;
var glbFromTags;
var glbToTags;
var objTagsInputGrid;
var objFromTagsAssociationGrid;
var objToTagsAssociationGrid;
var glbTagsDummyRecordsNumber = 100;
var glbClientTagsItems;
var tagStatus_New = "N";
var tagStatus_Updated = "U";
var tagStatus_Deleted = "D";
var selectedIds;

function renderTagsPage(type,sourceId) {
    if (type == "input") {
        $(".dummyTagsAssociateForm").html("");
        hideTagsAssociateForm();
        showTagsInputForm();
        handleTagsInputForm();
    }
    else if (type == "associate") {
          $(".dummyTagsInputForm").html("");
          hideTagsInputForm();
          showTagsAssociateForm();
          handleTagsAssociation(sourceId);
    }

}

//Tags Input form actions
function handleTagsInputForm() {
    loadTags(postLoadTagsForInput);
 
    $(".dummyTagsInputFormCloseBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideTagsInputForm();
    });
    $(".dummyTagsInputFormCancelBtn").unbind("click").bind("click", function() {
        hideOverLay();
        hideTagsInputForm();
    });
    $(".dummyTagsInputFormSaveBtn").unbind("click").bind("click", function() {
        setTimeout('SaveTags()', 100)
        
    });
}
function postLoadTagsForInput(objTags) {
    $("#grdTagsInputForm").css("height", parseInt(document.body.offsetHeight) - 175);
    glbInputTags = objTags;
    buildTagsInputGrid(objTags);
  
}


function buildTagsInputGrid(datafeed) {
    $("#grdTagsInputForm").html("");
    objTagsInputGrid = "";
    objTagsInputGrid = new dhtmlXGridObject("grdTagsInputForm");
    objTagsInputGrid.setImagePath("../plugins/dhtmlxGrid/codebase/imgs/");
    objTagsInputGrid.setHeader("#,Name");
    objTagsInputGrid.attachHeader("&nbsp;,#text_filter");
    objTagsInputGrid.setInitWidths("50,*");
    objTagsInputGrid.setColAlign("left,left");
    objTagsInputGrid.setColVAlign("middle,middle");
    objTagsInputGrid.setColTypes("ronum,ed"); //ronum declaration is in default.js
    objTagsInputGrid.setColSorting("int,str");
    objTagsInputGrid.enableMultiline(false);
    objTagsInputGrid.setColumnsVisibility("false,false");
    objTagsInputGrid.setSkin("dhx_skyblue");
    objTagsInputGrid.enableEditEvents(true, false, true);
    objTagsInputGrid.enableEditTabOnly(true);
    objTagsInputGrid.enableKeyboardSupport(true);
    objTagsInputGrid.enableCellIds(true);
    objTagsInputGrid.enableTooltips("false,false");
    objTagsInputGrid.init();
    //Loading Data
    objTagsInputGrid.parse(getTagsInputJsonDataDhtmlxFormat(datafeed), "json");
    objTagsInputGrid.attachEvent("onEditCell", function(stage, rId, cInd, nValue, oValue) {
    $("#grdTagsInputForm").find(".dhx_combo_edit").css("height", "18");
        if (stage == 2) {
           
            if (nValue != oValue) {

                if (isTagNew(rId))
                    saveClientTagsItems(new tagItem(rId, $.trim(nValue), tagStatus_New));
                else
                    saveClientTagsItems(new tagItem(rId, $.trim(nValue), tagStatus_Updated));

                return true;
            }
        }
    });
    $("#grdTagsInputForm").find(".filter").find("input").bind("keypress", function(event) {// this is to avoid post back
        if (event.keyCode == 13) return false;
    }); 
}

function getTagsInputJsonDataDhtmlxFormat(feedFromServer) {
    function dataSources(rows) {
        this.rows = rows;
    }
    function dataSourceItem(id, data) {
        this.id = id;
        this.data = data;
    }
    var arrRows = new Array();
    var i = 0;
    for (i = 0; i < feedFromServer.length; i++) {
        arrData = new Array();
        arrData.push(i + 1);
        arrData.push(feedFromServer[i].Name);
        arrRows.push(new dataSourceItem(tagStatus_Updated + "_" + feedFromServer[i].Id, arrData));
    }
    //Add 100 Dummy rows for adding new tags
    for (var j = 1; j <= glbTagsDummyRecordsNumber; j++) {
        i++;
        arrData = new Array();
        arrData.push(i);
        arrData.push("");
        arrRows.push(new dataSourceItem(tagStatus_New + "_" + i, arrData));
    }
    JsonDataDhtmlxFormat = JSON.stringify(new dataSources(arrRows));
    return JsonDataDhtmlxFormat;

}

function tagItem(id, name,status) {
    this.id = id;
    this.name = name;
    this.status = status;
}
function isTagNew(rId) {
    if (rId.indexOf(tagStatus_New) > -1)
        return true
    else
        return false;
}

function getTagId(objTag) {
    return objTag.id.split("_")[1];
}
function saveClientTagsItems(objTag) {
    var blnFound = false;
    if (glbClientTagsItems == undefined) glbClientTagsItems = new Array()

    if (glbClientTagsItems.length == 0)
        glbClientTagsItems.push(objTag)
    else {
        for (var idx = 0; idx < glbClientTagsItems.length; idx++) {
            if (glbClientTagsItems[idx].id == objTag.id) {
                glbClientTagsItems[idx] = objTag;
                blnFound = true;
                break;
            }
        }
        if(!blnFound)
            glbClientTagsItems.push(objTag);
        
    }

}



function getUpdatedTagItems() {
    var updatedTags=new Array();
    if(glbClientTagsItems.length>0) {
        for (var idx = 0; idx < glbClientTagsItems.length; idx++) {
            if ($.trim(glbClientTagsItems[idx].name) != "" && glbClientTagsItems[idx].status == tagStatus_Updated)
                updatedTags.push(glbClientTagsItems[idx]);
        }
    }
    return updatedTags;

}
function getNewTagItems() {
    var newTags = new Array();
    if (glbClientTagsItems.length > 0) {
        for (var idx = 0; idx < glbClientTagsItems.length; idx++) {
            if ($.trim(glbClientTagsItems[idx].name) != "" && glbClientTagsItems[idx].status == tagStatus_New)
                newTags.push(glbClientTagsItems[idx]);
        }
    }
    return newTags;

}
function getDeletedTagItems() {
    var deletedTags = new Array();
    if (glbClientTagsItems.length > 0) {
        for (var idx = 0; idx < glbClientTagsItems.length; idx++) {
            if ($.trim(glbClientTagsItems[idx].name) == "" && glbClientTagsItems[idx].status == tagStatus_Updated)
                deletedTags.push(glbClientTagsItems[idx]);
        }
    }
    return deletedTags;

}

function SaveTags() {
    if (glbClientTagsItems == undefined) {
        alert("No tags added or updated!");
        return;
    }
    if (glbClientTagsItems.length == 0) {
        alert("No tags added or updated!");
    }
    else {
        var arrNewTags = getNewTagItems();
        if (arrNewTags.length > 0) {
            for (var Idx = 0; Idx < arrNewTags.length; Idx++) {
                CreateTag(arrNewTags[Idx]);
            }
        }
        var arrUpdatedTags = getUpdatedTagItems();
        if (arrUpdatedTags.length > 0) {
            for (var Idx = 0; Idx < arrUpdatedTags.length; Idx++) {
                UpdateTag(arrUpdatedTags[Idx]);
            }
        }
        var arrDeletedTags = getDeletedTagItems();
        if (arrDeletedTags.length > 0) {
            for (var Idx = 0; Idx < arrDeletedTags.length; Idx++) {
                DeleteTag(arrDeletedTags[Idx]);
            }
        }
        alert("Tags saved successfully!");
        glbClientTagsItems = new Array();
        loadTags(postLoadTagsForInput);
    }
    
    
}
//Tags Association form actions

function handleTagsAssociation(sourceId) {
    loadTags(postTagsLoad);
    
    function postTagsLoad(objMasterTags) {
        if (sourceId == "") {
            buildFromTagsAssociationGrid(objMasterTags);
            buildToTagsAssociationGrid({});
        }
        else {
            
            loadCategorySourceTags(sourceId,postEditLoad);
        }
        function postEditLoad(objAssociatedTags) {
            buildFromTagsAssociationGrid(objMasterTags);
            buildToTagsAssociationGrid(objAssociatedTags);
            removeFromTags(objToTagsAssociationGrid.getAllRowIds()); 
        }
        
    }
    $(".dummyTagsAssociateFormMoveRight").unbind("click").bind("click", function() {
        selectedIds = objFromTagsAssociationGrid.getSelectedRowId()
        if (selectedIds != null) {
            removeFromTags(selectedIds);
            addToTags(selectedIds);
        }
        

    });
    $(".dummyTagsAssociateFormMoveLeft").unbind("click").bind("click", function() {
        selectedIds = objToTagsAssociationGrid.getSelectedRowId()
        if (selectedIds != null) {
            removeToTags(selectedIds);
            addFromTags(selectedIds);
        }
    });
    
    
}


function buildFromTagsAssociationGrid(datafeed) {
    glbFromTags=datafeed;
    $("#grdFromTagsAssociate").html("");
    objFromTagsAssociationGrid = "";
    objFromTagsAssociationGrid = new dhtmlXGridObject("grdFromTagsAssociate");
    objFromTagsAssociationGrid.setImagePath("../plugins/dhtmlxGrid/codebase/imgs/");
    objFromTagsAssociationGrid.setHeader("#,Master List");
    objFromTagsAssociationGrid.attachHeader("&nbsp;,#text_filter");
    objFromTagsAssociationGrid.setInitWidths("50,*");
    objFromTagsAssociationGrid.setColAlign("left,left");
    objFromTagsAssociationGrid.setColVAlign("middle,middle");
    objFromTagsAssociationGrid.setColTypes("ro,ro");
    objFromTagsAssociationGrid.setColSorting("int,str");
    objFromTagsAssociationGrid.enableMultiline(false);
    objFromTagsAssociationGrid.setColumnsVisibility("true,false");
    objFromTagsAssociationGrid.setSkin("dhx_skyblue");
    objFromTagsAssociationGrid.enableCellIds(true);
    objFromTagsAssociationGrid.enableTooltips("false,false");
    objFromTagsAssociationGrid.enableMultiselect(true);
    objFromTagsAssociationGrid.init();
    //Loading Data
    objFromTagsAssociationGrid.parse(getTagsAssociationJsonDataDhtmlxFormat(datafeed), "json");
   
    
}
function buildToTagsAssociationGrid(datafeed) {
    glbToTags=datafeed;
    $("#grdToTagsAssociate").html("");
    objToTagsAssociationGrid = "";
    objToTagsAssociationGrid = new dhtmlXGridObject("grdToTagsAssociate");
    objToTagsAssociationGrid.setImagePath("../plugins/dhtmlxGrid/codebase/imgs/");
    objToTagsAssociationGrid.setHeader("#,Associated List");
    objToTagsAssociationGrid.attachHeader("&nbsp;,#text_filter");
    objToTagsAssociationGrid.setInitWidths("50,*");
    objToTagsAssociationGrid.setColAlign("left,left");
    objToTagsAssociationGrid.setColVAlign("middle,middle");
    objToTagsAssociationGrid.setColTypes("ro,ro");
    objToTagsAssociationGrid.setColSorting("int,str");
    objToTagsAssociationGrid.enableMultiline(false);
    objToTagsAssociationGrid.setColumnsVisibility("true,false");
    objToTagsAssociationGrid.setSkin("dhx_skyblue");
    objToTagsAssociationGrid.enableCellIds(true);
    objToTagsAssociationGrid.enableTooltips("false,false");
    objToTagsAssociationGrid.enableMultiselect(true);
    objToTagsAssociationGrid.init();
    //Loading Data
    objToTagsAssociationGrid.parse(getTagsAssociationJsonDataDhtmlxFormat(datafeed), "json");
    //detach first header's line

}
function getTagsAssociationJsonDataDhtmlxFormat(feedFromServer) {
    function dataSources(rows) {
        this.rows = rows;
    }
    function dataSourceItem(id, data) {
        this.id = id;
        this.data = data;
    }
    var arrRows = new Array();
    var i = 0;
    for (i = 0; i < feedFromServer.length; i++) {
        arrData = new Array();
        arrData.push(i + 1);
        arrData.push(feedFromServer[i].Name);
        arrRows.push(new dataSourceItem(feedFromServer[i].Id, arrData));
    }
    
    JsonDataDhtmlxFormat = JSON.stringify(new dataSources(arrRows));
    return JsonDataDhtmlxFormat;

}
function removeFromTags(tagIds) {
    if (tagIds != "") {
        tagIds = tagIds.split(",");
        for (var idx = 0; idx < tagIds.length; idx++) {;
            objFromTagsAssociationGrid.setRowHidden(tagIds[idx], true);
        }
    }
}
function removeToTags(tagIds) {
    objToTagsAssociationGrid.deleteSelectedRows();
}
function addFromTags(tagIds) {
    if (tagIds != "") {
        tagIds = tagIds.split(",");
        for (var idx = 0; idx < tagIds.length; idx++) {
            objFromTagsAssociationGrid.setRowHidden(tagIds[idx], false);
        }
    }
}
function addToTags(tagIds) {
    var objTag;
    if (tagIds != "") {
        tagIds = tagIds.split(",");
        for (var idx = 0; idx < tagIds.length; idx++) {
           objTag = getTag(tagIds[idx], glbFromTags);
           objToTagsAssociationGrid.addRow(objTag.Id, [parseInt(objToTagsAssociationGrid.getRowsNum()+1), objTag.Name]);
        }
    }
}
function getTag(id, objTags) {
    for (var idx = 0; idx < objTags.length; idx++) {
        if (objTags[idx].Id == id) {
            return objTags[idx];
            break;
        }        
    }
}
function getAssociatedTags() {
    var objTags = new Array()
    var associatedIds = objToTagsAssociationGrid.getAllRowIds();
    if (associatedIds != "") {
        for(var idx=0;idx<associatedIds.length;idx++) {
            objTags.push(getTag(associatedIds[idx],glbFromTags));
        }
    }
    return objTags;
}
function getAssociatedTagsIds() {
    var objTagsIds = "";
    if (objToTagsAssociationGrid.getAllRowIds() != "") 
        objTagsIds = objToTagsAssociationGrid.getAllRowIds();
    
    return objTagsIds;
}
/**********************  Ajax DataBase Call *********** ********/

/*********** Get All Tags ************/
function loadTags(callback) {
    var postData;
    postData = { intOperationType: 11 };

    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objTags) {
        callback(objTags);
        },

        error: function() {

            alert("Error While Retrieving Tags");

        }
    });


}
/*********** Get All Tags ************/
function loadCategorySourceTags(intCategorySourceIdx,callback) {
    var postData;
    postData = { intOperationType: 12,intIdx:intCategorySourceIdx };

    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/GetFromDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function(objTags) {
            callback(objTags);
        },

        error: function() {

            alert("Error While Retrieving Tags");

        }
    });


}
/*********** Create Tags ************/
function CreateTag(objTag,callback) {

    var postData =
    {
        intOperationType: 13,
        intUserIdx: glbUser.Id,// this is getting from defualt.js
        strName: objTag.name
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function() {
            if(callback !=undefined)
                callback();
        },
        error: function() {

            alert("Error While Saving Tags");

        }
    });
}
/*********** Update Tags ************/
function UpdateTag(objTag,callback) {

    var postData =
    {
        intOperationType: 14,
        intUserIdx: glbUser.Id, // this is getting from defualt.js
        strName: objTag.name,
        intIdx: getTagId(objTag)
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function() {
        if (callback != undefined)
            callback();
        },
        error: function() {

            alert("Error While Updating Tags");

        }
    });
}
/*********** Delete Tags ************/
function DeleteTag(objTag, callback) {

    var postData =
    {
        intOperationType: 15,
        intIdx: getTagId(objTag)
    }
    $.ajax({
        type: "POST",
        url: "../framework/JsonServices/data/SaveToDataBase.aspx",
        dataType: "json",
        data: postData,
        success: function() {
            if (callback != undefined)
                callback();
        },
        error: function() {

            alert("Error While Updating Tags");

        }
    });
}
/**********************  Show/Hide Functions *********** ********/
function showTagsInputForm() {
    $(".dummyTagsInputForm").show();
}
function hideTagsInputForm() {
    $(".dummyTagsInputForm").hide();
}
function showTagsAssociateForm() {
    $(".dummyTagsAssociateForm").show();
}
function hideTagsAssociateForm() {
    $(".dummyTagsAssociateForm").hide();
}