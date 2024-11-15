package unit02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class checkList
 */
@WebServlet("/checkList")
public class CheckList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String[] brands = request.getParameterValues("item");
		
		PrintWriter out = response.getWriter();
		
		out.print("당신이 선택한 브랜드입니다. <hr>");
		
		if(brands == null) {
			
		} else if(brands.length == 1) {
			out.print(brands[0]);
		} else {
			String str = "<table>";
			for(int i = 0; i < brands.length; i++) {
				if(i % 4 == 0) {
					str += "<tr><td><b>" + brands[i] + "</b></td>";
				} else if(i % 4 == 3) {
					str += "<td><b>" + brands[i] + "</b></td></tr>";
				} else {
					str += "<td><b>" + brands[i] + "</b></td>";
				}
			}
			if(brands.length % 4 != 0) {
				str += "</tr>";
			}
			str += "</table>";
			out.print(str);
		}
		
		out.print("<a href='javascript:history.go(-1)'>뒤로가기</a>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
