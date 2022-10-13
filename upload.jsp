<html>
    <head>
        
<%@ page import="java.io.*,
java.awt.image.BufferedImage,
javax.swing.*,
java.awt.event.*,
javax.swing.filechooser.*,
java.awt.image.WritableRaster,
java.awt.image.DataBufferByte,
javax.imageio.ImageIO,
java.io.ByteArrayInputStream,org.apache.commons.codec.binary.Base64" %>
    </head>
        <% 
            String s = "prasanna";
            HttpSession session1 = request.getSession(false);
            int id = (int)session1.getAttribute("branchid");
        %>
    <body>
        <form action="upload.jsp" method="POST">
            <input type="submit" value="pick" name="file">
        </form>
        <form action="upload" method="post">
            <span>Branch Id: <%=id%> </span>
            <span>bike name</span>
            <input type="text" name="name">
            <span>price</span>
            <input type="text" name="price">
            <span>count</span>
            <input type="text" name="count">
            <input type="submit" value="submit">
        </form>
        <%
            if(request.getParameter("file")!=null){
                Base64 b = new Base64();
                File selectedFile = null;
                JFileChooser chooser = new JFileChooser();
                FileNameExtensionFilter filter = new FileNameExtensionFilter(
                        "JPG & GIF Images", "jpg", "gif","jfif","jpeg");
                chooser.setFileFilter(filter);
                int returnVal = chooser.showOpenDialog(null);
                if(returnVal == JFileChooser.APPROVE_OPTION) {
                    selectedFile = chooser.getSelectedFile();
                }
                String path = selectedFile.getAbsolutePath();
                out.print("<span>"+path+"</span>");
                File imgPath = new File(path);
                FileInputStream fileInputStreamReader = new FileInputStream(imgPath);
                byte[] bytes = new byte[(int)imgPath.length()];
                fileInputStreamReader.read(bytes);
                String encodedfile = new String(Base64.encodeBase64(bytes), "UTF-8"); 
                session1.setAttribute("img",encodedfile);
            }
        %>
    </body>
</html>