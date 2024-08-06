package muni.product.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import muni.controller.CommandProcess;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemDto pid = new ProductItemDto();
		ProductItemRepo pcr = new ProductItemRepoImpl();

		String savePath = "/upload/product";
		int fileSize = 10 * 1024 * 1024;
		String encType = "UTF-8";
		String realPath = request.getServletContext().getRealPath(savePath);
		int result=0;
		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, fileSize, encType,
					new DefaultFileRenamePolicy());
			
			
			File file1=multi.getFile("piFile1");
			if(file1!=null)
			pid.setPiFile1(file1.getName());
			File file2=multi.getFile("piFile2");
			if(file2!=null)
			pid.setPiFile2(file2.getName());
			File file3=multi.getFile("piFile3");
			if(file3!=null)
			pid.setPiFile3(file3.getName());
			File file4=multi.getFile("piFile4");
			if(file4!=null)
			pid.setPiFile4(file4.getName());
			File file5=multi.getFile("piFile5");
			if(file5!=null)
			pid.setPiFile5(file5.getName());
			File file6=multi.getFile("piFile6");
			if(file6!=null)
			pid.setPiFile6(file6.getName());
			File file7=multi.getFile("piFile7");
			if(file7!=null)
			pid.setPiFile7(file7.getName());
			
			int piHit = 0;
			if (request.getParameter("piHit") != null) {
				piHit = Integer.parseInt(request.getParameter("piHit"));
			}
			int piPoint = 0;
			if (request.getParameter("piPoint") != null) {
				piHit = Integer.parseInt(request.getParameter("piPoint"));
			}
			
			pid.setPiPoint(piPoint);
			pid.setPcId(multi.getParameter("pcId"));
			pid.setPiName(multi.getParameter("piName"));
			pid.setPiCprice(Integer.parseInt(multi.getParameter("piCprice")));
			pid.setPiPrice(Integer.parseInt(multi.getParameter("piPrice")));
			pid.setPiSailPrice(Integer.parseInt(multi.getParameter("piSailPrice")));
			pid.setPiDelivery(Integer.parseInt(multi.getParameter("piDelivery")));
			pid.setPiCount(Integer.parseInt(multi.getParameter("piCount")));
			pid.setPiContent(multi.getParameter("piContent"));
			pid.setPiContent("123");
			System.out.println(pid);
			result = pcr.insert(pid);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		request.setAttribute("result", result);
		return "/view/admin/product/productWrite.jsp";
	}

}
