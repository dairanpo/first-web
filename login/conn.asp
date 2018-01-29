<%
      dim db,conn,ccc
      db="users.mdb"                                                 'Êý¾Ý¿âÂ·¾¶!
      Set Conn = Server.CreateObject("ADODB.ConNECtion")
      set ccc = server.createobject("adodb.recordset")
      rs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"") 
      conn.Open rs
%>