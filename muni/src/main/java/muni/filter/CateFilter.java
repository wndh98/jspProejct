package muni.filter;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import muni.product.dto.ProductCateDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;

/**
 * Servlet Filter implementation class CateFilter
 */

public class CateFilter implements Filter {
       
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		ProductCateRepo pcr = new ProductCateRepoImpl();
		
		List<ProductCateDto> cateList =pcr.selectList();
		Collections.sort(cateList);
		request.setAttribute("cateList", cateList);
		
		chain.doFilter(request, response);
	}

	

}
