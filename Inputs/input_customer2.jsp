<%@ page contentType="text/html; charset=Big5" import="java.util.Date, java.io.*, , java.sql.*"%>
<HTML> <HEAD> <TITLE>Project input customer.jsp</TITLE> </HEAD>
<BODY> <CENTER> <FONT SIZE = 5 COLOR = blue>Input customer</FONT> </CENTER> <HR> 
<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con = DriverManager.getConnection("jdbc:odbc:project");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
%>

	<FORM Action="input_customer_result.jsp", method=post name=FORM5>
		<P>Customer id<INPUT type=text name=cid value="" size=4 maxlength=4></P>
		<P>Customer first order date<INPUT type=DATE name=cfod value=""></P>
		<P>Customer city<INPUT type=text name=ccity value="" size=4 maxlength=4></P>
		<P>Customer type1: <input type="radio" name="cust1" value="employee">Employee  <input type="radio" name="cust1" value="regular">Regular</P>
		<P>Customer type2: <input type="checkbox" name="cust2" value="walkin">Walk-in  <input type="checkbox" name="cust2" value="ecom">E-commerce</P>
		<INPUT name=submitCustomer type=submit value="Insert">
	</FORM>
</BODY>
</HTML>