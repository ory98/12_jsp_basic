package _07_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _04_bean.ProductBean;


@WebServlet("/jstlEx03")
public class jstlEx03 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] datas = {"데이터1", "데이터2" , "데이터3" , "데이터4" , "데이터5"};
		
		request.setAttribute("datas", datas); // jsp 에서 ${datas} 적어야한다는 확신이 있어야함. (같이 데려가는 함수)
		// ctrl + shift + O : 한번에 import
		
//		 ArrayList<ProductBean> productList = new ArrayList<ProductBean>(); 빈 배열만 있을 경우를 하기위해 만듬.
		

		ArrayList<ProductBean> productList = new ArrayList<ProductBean>();
		for (int i = 1; i < 10; i++) {
			ProductBean product = new ProductBean();
			product.setPdCd("P00" + i);
			product.setPdNm("기계식키보드" + i);
			product.setDeptCd("dept" + i);
			product.setDeptNm("생산부서" + i);
			product.setMgrCd("mgr" + i);
			product.setMgrNm("홍길동" + i);
			productList.add(product);
		}		
		
		request.setAttribute("productList", productList); 
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx03.jsp"); // 제일 먼저 연결할 경로를 설정한다. 
		dis.forward(request, response);
		
	}


}
