<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.jsp.board.BoardDAO"%>
<%@ page import="com.jsp.board.BoardDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
    request.setCharacterEncoding("UTF-8");
    String searchType = request.getParameter("type");
    String searchQuery = request.getParameter("query");

    BoardDAO dao = BoardDAO.getInstance();
    ArrayList<BoardDTO> searchResults = dao.searchBoard(searchType, searchQuery);

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    
    StringBuilder jsonBuilder = new StringBuilder();
    jsonBuilder.append("[");
    for (int i = 0; i < searchResults.size(); i++) {
        BoardDTO dto = searchResults.get(i);
        if (i > 0) jsonBuilder.append(",");
        jsonBuilder.append("{");
        jsonBuilder.append("\"bId\":").append(dto.getbId()).append(",");
        jsonBuilder.append("\"bName\":\"").append(dto.getbName()).append("\",");
        jsonBuilder.append("\"bTitle\":\"").append(dto.getbTitle()).append("\",");
        jsonBuilder.append("\"bDate\":\"").append(sdf.format(dto.getbDate())).append("\",");
        jsonBuilder.append("\"bHit\":").append(dto.getbHit());
        jsonBuilder.append("}");
    }
    jsonBuilder.append("]");

    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    out.print(jsonBuilder.toString());
    out.flush();
%>