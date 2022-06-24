<%@page import="_06_file.FileDao"%>
<%@page import="_06_file.FileDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		try {
			
			String location = "C:\\Users\\15_web_jsb\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
			
			MultipartRequest multi = new MultipartRequest(request, location , 1024 * 1024 , "utf-8", new DefaultFileRenamePolicy());
			// 파일 최대 크기 : 파일 모두 합친 크기
			
			// 이름과 제목은 한번만 작성하기 때문에 반복문에 넣지 않아도 됨.
			String userName = multi.getParameter("userName");
			String title = multi.getParameter("title");
			
			Enumeration files = multi.getFileNames();
			
			ArrayList<FileDto> fileList = new ArrayList<FileDto>();
			
			while (files.hasMoreElements()) {
				
				String element = (String)files.nextElement();
				
				// 파일이 각각 다른 파일이기 때문에 반복문에 넣어줌 
				String filesystemName 	= multi.getFilesystemName(element);
				String originalFileName = multi.getOriginalFileName(element);	
				String contentType 		= multi.getContentType(element);
				long length 			= multi.getFile(element).length();
				
				FileDto fileDto = new FileDto(); // Dto 만듬
				
				fileDto.setUserName(userName);
				fileDto.setTitle(title);
				fileDto.setFilesystemName(filesystemName); // Dto에 하나씩 넣어주기
				fileDto.setOriginalFileName(originalFileName);
				fileDto.setContentType(contentType);
				fileDto.setLength(length);
				
				fileList.add(fileDto); // List에 추가하기 			
			}
			
			FileDao.getInstance().insertFiles(fileList);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	%>
	
	<script>
		alert("파일이 업로드 되었습니다.");
		location.href = "fileEx02_list.jsp";
	</script>

</body>
</html>