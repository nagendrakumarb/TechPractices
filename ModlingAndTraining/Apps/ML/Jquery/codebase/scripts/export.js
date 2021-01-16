function ExportHandler(columnHeader,columnIds,rowIds) {
    var columnHeader = columnHeader;
    var columnIds = columnIds;
    var rowIds = rowIds;

    var getExcelFile = function() {
       
        var frmWindow = getIFrameWindow();
        var frm = frmWindow.document.getElementById("frmFile");
        frm.submit();
    }
    var getIFrameWindow = function() {

        var ifr = document.getElementById("fileFrame");
        if (ifr) {
            $(ifr).html("");
            createFrame();
        }
        else
            createFrame();

        var wnd = window.frames["fileFrame"];
        return wnd;
    }
    var createFrame = function() {
   
        var frame = document.createElement("iframe");
        frame.name = "fileFrame";
        frame.id = "fileFrame";

        document.body.appendChild(frame);
        generateIFrameContent();
        frame.style.width = "0px";
        frame.style.height = "0px";
        frame.style.border = "0px";
    }
    var generateIFrameContent = function() {
        var frameWindow = window.frames["fileFrame"];
        var content = "<form id='frmFile' method='post' enctype='application/data' action='../framework/JsonServices/utilities/Export.aspx'>";
        content += "<input type='text' id='strColumnHeader' name='strColumnHeader' value='" +columnHeader+"' />";
        content += "<input type='text' id='strColumnIds' name='strColumnIds' value='"+ columnIds+"'/>";
        content += "<input type='text' id='strRowIds' name='strRowIds' value='" + rowIds + "' />";
        content += "</form>";
        frameWindow.document.open();
        frameWindow.document.write(content);
        frameWindow.document.close();
    }
    getExcelFile();

}