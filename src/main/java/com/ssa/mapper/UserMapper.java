package com.ssa.mapper;

import com.ssa.pojo.User;
import com.ssa.pojo.UserExample;
import com.ssa.pojo.UserParameter;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    long countByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int deleteByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    List<User> selectByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    User selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbg.generated Mon Apr 06 20:16:29 CST 2020
     */
    int updateByPrimaryKey(User record);


    int countAllUserByRoleId(Integer roleId);

    List<User> getAllUserByRoleId(@Param("roleId") Integer roleId,
                                  @Param("begin") Integer begin, @Param("count") Integer count);

    int countAllUserByNotRoleId(Integer roleId);

    List<User> getAllUserByNotRoleId(@Param("roleId") Integer roleId,
                                     @Param("begin") Integer begin, @Param("count") Integer count);

    List<User> getAllUserByLimit(UserParameter userParameter);

    int countAllUserByLimit(UserParameter userParameter);

    List<User> getAllDelUserByLimit(UserParameter userParameter);

    int countAllDelUserByLimit(UserParameter userParameter);

    List<User> selectAllUser();

    User getByName(@Param("name") String username);

    User getUserByPhoneAndName(@Param("phone") String phone, @Param("name") String name);
}