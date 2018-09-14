<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurriculumSchedule.aspx.cs"
    Inherits="XinjianSoft.XJPK.Web.UI.Schedule.CurriculumSchedule" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/css/skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="/css/pagination.css" rel="stylesheet" type="text/css" />
    <link href="/css/Public.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="/js/scripts/jquery/jquery-1.10.2.min.js"></script>

    <script type="text/javascript" src="/js/scripts/jquery/Validform_v5.3.2_min.js"></script>

    <script type="text/javascript" src="/js/scripts/lhgdialog/lhgdialog.js?skin=idialog"></script>

    <script type="text/javascript" src="/js/layout.js"></script>

    <script type="text/javascript">                                                                                                                                        
        function showload() {
            $("#curriculumdiv").html("");
            $("#doing").show();
        }
        //        function ReLock() {
        //            $("#doing").remove();
        //            var _ie6 = window.ActiveXObject && !window.XMLHttpRequest
        //            var frm = '<iframe src="javascript:\'\'" style="width:100%;height:100%;position:absolute;' +
        //			    'top:0;left:0;z-index:-1;filter:alpha(opacity=0)" id="doing"><div id="doing" style="background: #DCE2F1;opacity: 0.6;filter: alpha(opacity=60);text-align: center;display: block; width: 100%; height: 100%;"><img src="/Images/Common/Loading.gif" alt="" height="70px" width="70"></div></iframe>';
        //            var positionType = _ie6 ? 'absolute' : 'fixed';
        //            var mask = '<div id="doing" style="background: #DCE2F1;opacity: 0.6;filter: alpha(opacity=60);text-align: center;display: block; position: ' + positionType + '; width:100%; height: 100%;"><img src="/Images/Common/Loading.gif" alt="" height="70px" width="70"></div>';
        //            $(".mainbody").append(mask);
        //        }
    </script>

    <style type="text/css">
        #UpdatePanel1
        {
            float: left;
        }
    </style>
</head>
<body class="mainbody">
    <form id="form1" runat="server">
    <!--导航栏-->
    <div class="location">
        <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
        <a href="/center.aspx" class="home"><i></i><span>首页</span></a> <i class="arrow">
        </i><span>课表中心</span><i class="arrow"> </i><span>课表编排</span>
    </div>
    <!--/导航栏-->
    <!--工具栏-->
    <div class="toolbar-wrap">
        <div id="floatHead" class="toolbar">
            <div class="l-list">
                <ul class="icon-list">
                    <li>
                        <asp:LinkButton ID="btnSave" runat="server" CssClass="autocurr" OnClientClick="return showload();"
                            OnClick="btnSave_Click"><i></i><span>课表编排</span></asp:LinkButton>
                    </li>
                    <li><a class="import" href="/Schedule/InputSchedule.aspx"><i></i><span>课表导入</span></a></li>
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="export" OnClick="btnexp_Click"><i></i><span>课表导出</span></asp:LinkButton></li>
                    <li><a class="print" onclick="window.print();"><i></i><span>打印</span></a></li>
                    <li>
                        <%--<li><a class="add" href="">
                        <i></i><span>查询</span></a></li>--%>
                </ul>
                <div class="menu-list">
                    <div class="rule-single-select">
                        <asp:DropDownList ID="ddlyear" runat="server" SkinID="Search" AutoPostBack="true"
                            OnSelectedIndexChanged="ddlyear_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="rule-single-select">
                        <asp:DropDownList ID="ddlgrade" SkinID="Search" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="ddlgrade_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="rule-single-select">
                        <div class="SearchFormRight">
                            <asp:DropDownList ID="ddlclass" SkinID="Search" runat="server" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlclass_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/工具栏-->
    <!--列表-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="padding: 2px 0px 0px 0px;">
                <div id="curriculumdiv" runat="server">
                </div>
            </td>
        </tr>
    </table>
    <!--/列表-->
    <!--内容底部-->
    <div id="doing" style="display: none; width: 100%; height: 100%; text-align: center;">
        <span style="display: block; margin: 0 auto; width: 300px; height: 200px;">
            <img src="/Images/Common/Loading.gif" style="float: left;">
            <span style="top: 40px; left: 75px; font-weight: bold; float: left; margin-top: 3px;">
                正在排课，请耐心等待...... </span><span class="clear"></span></span>
    </div>
    </form>
</body>
