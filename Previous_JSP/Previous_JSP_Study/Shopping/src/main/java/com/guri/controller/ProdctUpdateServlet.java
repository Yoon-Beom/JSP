package com.guri.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guri.dao.ProductDAO;
import com.guri.dto.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ProdctUpdateServlet
 */
@WebServlet("/prodctUpdate.do")
public class ProdctUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdctUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int code = Integer.parseInt(request.getParameter("code"));
		
		ProductDAO pdao = ProductDAO.getInstance();
		ProductVO pvo = pdao.selectProductByCode(code);
		
		request.setAttribute("product", pvo);
		
		RequestDispatcher rd = request.getRequestDispatcher("product/prodctUpdate.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = 
					new MultipartRequest(
							request,
							path,
							sizeLimit,
							encType,
							new DefaultFileRenamePolicy());
		
		int code = Integer.parseInt(multi.getParameter("code"));
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String pictureurl = multi.getParameter("pictureurl");
		String description = multi.getParameter("description");
		
		ProductVO pvo = new ProductVO();
		pvo.setCode(code);
		pvo.setName(name);
		pvo.setPrice(price);
		pvo.setPictureurl(pictureurl);
		pvo.setDescription(description);
		
		ProductDAO pdao = ProductDAO.getInstance();
		pdao.updateOneProduct(pvo);
		
		response.sendRedirect("productList.do");
	}

}


























