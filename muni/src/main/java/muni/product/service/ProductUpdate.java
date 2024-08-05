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

public class ProductUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		ProductItemDto pid = new ProductItemDto();
		ProductItemRepo pcr = new ProductItemRepoImpl();

		String savePath = "/upload/product";
		int fileSize = 10 * 1024 * 1024;
		String encType = "UTF-8";
		String realPath = request.getServletContext().getRealPath(savePath);
		int result = 0;
		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, fileSize, encType,
					new DefaultFileRenamePolicy());

			int piHit = 0;
			if (multi.getParameter("piHit") != null) {
				piHit = Integer.parseInt(multi.getParameter("piHit"));
			}
			int piPoint = 0;
			if (multi.getParameter("piPoint") != null) {
				piPoint = Integer.parseInt(multi.getParameter("piPoint"));
			}
			int piNum = Integer.parseInt(multi.getParameter("piNum"));
			ProductItemDto oldProduct = pcr.findById(piNum);
			pid.setPiNum(piNum);
			pid.setPiPoint(piPoint);
			pid.setPiHit(piHit);
			pid.setPcId(multi.getParameter("pcId"));
			pid.setPiName(multi.getParameter("piName"));
			pid.setPiCprice(Integer.parseInt(multi.getParameter("piCprice")));
			pid.setPiPrice(Integer.parseInt(multi.getParameter("piPrice")));
			pid.setPiSailPrice(Integer.parseInt(multi.getParameter("piSailPrice")));
			pid.setPiDelivery(Integer.parseInt(multi.getParameter("piDelivery")));
			pid.setPiCount(Integer.parseInt(multi.getParameter("piCount")));
			pid.setPiContent(multi.getParameter("piContent"));
			pid.setPiContent("123");
			pid.setPiFile1(oldProduct.getPiFile1());
			pid.setPiFile2(oldProduct.getPiFile2());
			pid.setPiFile3(oldProduct.getPiFile3());
			pid.setPiFile4(oldProduct.getPiFile4());
			pid.setPiFile5(oldProduct.getPiFile5());
			pid.setPiFile6(oldProduct.getPiFile6());
			pid.setPiFile7(oldProduct.getPiFile7());
			
			String ofile1 = oldProduct.getPiFile1();
			File file1 = multi.getFile("piFile1");
			if (file1 != null) {
				File dfile1 = new File(realPath + "/" + ofile1);
				if (dfile1.exists())
					dfile1.delete();
				pid.setPiFile1(file1.getName());
			}
			String ofile2 = oldProduct.getPiFile2();
			File file2 = multi.getFile("piFile2");
			if (file2 != null) {
				File dfile2 = new File(realPath + "/" + ofile2);
				if (dfile2.exists())
					dfile2.delete();
				pid.setPiFile2(file2.getName());
			}
			String ofile3 = oldProduct.getPiFile3();
			File file3 = multi.getFile("piFile3");
			if (file3 != null) {
				File dfile3 = new File(realPath + "/" + ofile3);
				if (dfile3.exists())
					dfile3.delete();
				pid.setPiFile3(file3.getName());
			}
			String ofile4 = oldProduct.getPiFile4();
			File file4 = multi.getFile("piFile4");
			if (file4 != null) {
				File dfile4 = new File(realPath + "/" + ofile4);
				if (dfile4.exists())
					dfile4.delete();
				pid.setPiFile4(file4.getName());
			}

			String ofile5 = oldProduct.getPiFile5();
			File file5 = multi.getFile("piFile5");
			if (file5 != null) {
				File dfile5 = new File(realPath + "/" + ofile5);
				if (dfile5.exists())
					dfile5.delete();
				pid.setPiFile5(file5.getName());
			}
			String ofile6 = oldProduct.getPiFile6();
			File file6 = multi.getFile("piFile6");
			if (file6 != null) {
				File dfile6 = new File(realPath + "/" + ofile6);
				if (dfile6.exists())
					dfile6.delete();
				pid.setPiFile6(file6.getName());
			}
			String ofile7 = oldProduct.getPiFile7();
			File file7 = multi.getFile("piFile7");

			if (file7 != null) {
				File dfile7 = new File(realPath + "/" + ofile7);
				if (dfile7.exists())
					dfile7.delete();
				pid.setPiFile7(file7.getName());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(pid);
		result = pcr.update(pid);
		request.setAttribute("result", result);
		int curPage=1;
		String pcurPage = request.getParameter("curPage");
		if(pcurPage!=null && pcurPage.equals("")) {
			curPage=Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		return "/view/admin/product/productUpdate.jsp";
	}

}
