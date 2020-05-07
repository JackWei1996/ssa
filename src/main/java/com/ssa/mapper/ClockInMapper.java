package com.ssa.mapper;

import com.ssa.pojo.ClockIn;
import com.ssa.pojo.ClockInExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ClockInMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    long countByExample(ClockInExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int deleteByExample(ClockInExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int insert(ClockIn record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int insertSelective(ClockIn record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    List<ClockIn> selectByExample(ClockInExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    ClockIn selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int updateByExampleSelective(@Param("record") ClockIn record, @Param("example") ClockInExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int updateByExample(@Param("record") ClockIn record, @Param("example") ClockInExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int updateByPrimaryKeySelective(ClockIn record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table clock_in
     *
     * @mbg.generated Thu May 07 20:02:50 CST 2020
     */
    int updateByPrimaryKey(ClockIn record);

    List<ClockIn> getAllByLimit(ClockIn pojo);

    int countAllByLimit(ClockIn pojo);
}