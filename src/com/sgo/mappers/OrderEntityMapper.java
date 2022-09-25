package com.sgo.mappers;

import com.sgo.entity.OrderEntity;

import java.util.List;

public interface OrderEntityMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_
     *
     * @mbggenerated Wed Sep 21 21:49:32 CST 2022
     */
    int deleteByPrimaryKey(Integer orderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_
     *
     * @mbggenerated Wed Sep 21 21:49:32 CST 2022
     */
    int insert(OrderEntity record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_
     *
     * @mbggenerated Wed Sep 21 21:49:32 CST 2022
     */
    OrderEntity selectByPrimaryKey(Integer orderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_
     *
     * @mbggenerated Wed Sep 21 21:49:32 CST 2022
     */
    List<OrderEntity> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_
     *
     * @mbggenerated Wed Sep 21 21:49:32 CST 2022
     */
    int updateByPrimaryKey(OrderEntity record);
}