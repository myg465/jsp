
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{ font-size: 20px; border-collapse: collapse; }
			tr,td{ border: 1px solid black; }
			td{ width: 100px; height: 20px;}
		</style>
	</head>
	<body>
		<!-- html주석: html소스보기에서 나타남 -->
		<%--jsp주석: html소스보기에서 나타나지 않음 --%>
		
		<%! 
			int sum=0;
			double multi=1;
			
		%>
		<%
			int s1=Integer.parseInt(request.getParameter("start"));
			int e1=Integer.parseInt(request.getParameter("end"));
		%>
		
		<%!
			public int sum(int a, int b){
				sum=0;
				for(int i=a;i<=b;i++){
					sum+=i;
				}
				return sum;
			}
			public double multi(int a, int b){
				multi=1;
				for(int i=a;i<=b;i++){
					multi*=i;
				}
				return multi;
			}
		
		%>
		
		
		<h1>계산 결과</h1>
		<table>
				<tr>
					<td>범위</td>
					<td>더하기</td>
					<td>곱하기</td>
				</tr>
				
				<tr>
					<td><% out.println(s1+"에서"+e1+"까지의 범위"); %></td>
					<td>
					<%=sum(s1,e1)%>
					</td>
					<td>
					<%=multi(s1,e1)%>
					</td>
				</tr>
				<%-- 
				
				<tr>
					<td>1~50</td>
					<td>
					<%=sum(1,50) %>
					</td>
					<td>
					<%=multi(1,50) %>
					</td>
				</tr>
				<tr>
					<td>1~100</td>
					<td>
					<%=sum(1,100) %>
					</td>
					<td>
					<%=multi(1,100) %>
					</td>
				</tr>
				
				--%>
				
				
				<%--    내가 작성한 부분
				<%
				int i,j;
				int sum=0;
				double gop=1;
				
				int[]nums={10,100,50};
				
				for(i=0;i<3;i++){
					out.println("<tr>");
					out.print("<td>1~"+nums[i]+"</td>");
					sum=0;
					gop=1;
						for(j=1;j<=nums[i];j++){
						sum+=j;
						gop*=j;
						}
					out.print("<td>"+sum+"</td>");
					out.print("<td>"+gop+"</td>");
					out.println("</tr>");
				}
				
				
				%>
				--%>
			
		</table>
		
	</body>
</html>