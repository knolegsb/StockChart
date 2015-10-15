<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="StockChart.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock Quote and Chart from Yahoo</title>
    <script>
        function SendRequest() {
            var txtSymbol = document.getElementById("txtSymbol");
            window.location = "Chart.aspx?s=" + txtSymbol.value;
            return false;
        }

        function CheckEnter(e) {
            if ((e.keyCode && e.keyCode == 13) || (e.which && e.which == 13))
                return SendRequest();
            return true;
        }

        function changeChart(type, num, symbol) {
            var div1d = document.getElementById("div1d_" + num);
            var div5d = document.getElementById("div5d_" + num);
            var div3m = document.getElementById("div3m_" + num);
            var div6m = document.getElementById("div6m_" + num);
            var div1y = document.getElementById("div1y_" + num);
            var div2y = document.getElementById("div2y_" + num);
            var div5y = document.getElementById("div5y_" + num);
            var divMax = document.getElementById("divMax_" + num);
            var divChart = document.getElementById("imgChart_" + num);

            div1d.innerHTML = "1d";
            div5d.innerHTML = "5d";
            div3m.innerHTML = "3m";
            div6m.innerHTML = "6m";
            div1y.innerHTML = "1y";
            div2y.innerHTML = "2y";
            div5y.innerHTML = "5y";
            divMax.innerHTML = "Max";

            var rand_no = Math.random();
            rand_no = rand_no * 100000000;

            switch(type)
            {
                case 1:
                    div5d.innerHTML = "<b>5d</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/w?s=" + symbol + "&" + rand_no;
                    break;
                case 2:
                    div3d.innerHTML = "<b>3m</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/c/3m/" + symbol + "?" + rand_no;
                    break;
                case 3:
                    div6m.innerHTML = "<b>6m</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/c/6m/" + symbol + "?" + rand_no;
                    break;
                case 4:
                    div1y.innerHTML = "<b>1y</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/c/1y/" + symbol + "?" + rand_no;
                    break;
                case 5:
                    div2y.innerHTML = "<b>2y</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/c/2y/" + symbol + "?" + rand_no;
                    break;
                case 6:
                    div5y.innerHTML = "<b>5y</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/c/5y/" + symbol + "?" + rand_no;
                    break;
                case 7:
                    divMax.innerHTML = "<b>msx</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/c/my/" + symbol + "?" + rand_no;
                    break;
                case 0:
                default:
                    div1d.innerHTML = "<b>1d</b>";
                    divChart.src = "http://ichart.finance.yahoo.com/b?s=" + symbol + "&" + rand_no;
                    break;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr valign="top">
                <td style="font-family: Arial, Arial, Helvetica, sans-serif; font-size: 14px; color: #000; text-decoration: none;">
                    <input type="text" value="" id="txtSymbol" runat="server" onkeypress="return CheckEnter(event);" />
                    <input type="button" value="Get Quotes" onclick="return SendRequest();" />
                    <br />
                    <span style="font-family: Arial, Arial, Helvetica, sans-serif; font-size: 11px; color=#666;">
                        e.g. "YHOO or YHOO GOOG"
                    </span>
                   <%-- <%if (m_symbol != "")
                        {%>
                        <div id="divService" runat="server">

                        </div>
                        <%}%>--%>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
