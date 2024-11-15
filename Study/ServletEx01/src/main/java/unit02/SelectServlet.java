package unit02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();

		String job = request.getParameter("job");
		String[] interests = request.getParameterValues("interest");
		
		out.print("<style>"
				+ "table, th, td {"
				+ "border: 1px solid black;"
				+ "border-collapse: collapse;n"
				+ "}"
				+ "</style>");
		
		out.print("당신이 선택한 직업 : <b>" + job + "</b><hr>");
		out.print("당신이 선택한 관심 분야 : ");
		String str = "";
		
		if(interests == null) {
			out.print("없습니다. 관심 분야를 골라보세요.");
		} else {
			str += "<table>";
			for(int i = 0; i < interests.length; i++) {
				if(i % 4 == 0) {
					str += "<tr><td><b>" + interests[i] + "</b></td>";
				} else if(i % 4 == 3) {
					str += "<td><b>" + interests[i] + "</b></td></tr>";
				} else {
					str += "<td><b>" + interests[i] + "</b></td>";
				}
			}
			if(interests.length % 4 != 0) {
				str += "</tr>";
			}
			str += "</table>";
			out.print(str);
		}
		
		
		out.print("<br><a href='javascript:history.go(-1)'>뒤로 가기</a>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
