package muni.order.repository;

import muni.order.dto.OrderCartDto;

public interface OrderCartRepo {

	int save(OrderCartDto cart);

	int duplicateCheck(OrderCartDto dupCart);

}
