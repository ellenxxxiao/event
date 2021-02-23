package com.ellens.event.mapper;

import com.ellens.event.model.Event;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 *  映射接口
 */
@Mapper
public interface EventMapper {

    /**
     * 新增一个event
     * @param event 新增的event
     */
    void addEvent(Event event);

    /**
     * 删除指定id的Event
     * @param eventId 指定id
     * @return 被删除的Event对象
     */
    void deleteById(int eventId);

    /**
     * 更新一个Event
     * @param event 更新的Event对象
     * @return 更新的Event对象
     */
    void updateEvent(Event event);

    /**
     * 查询指定id的Event
     * @param eventId 指定id
     * @return 查询到的Event对象
     */
    Event findById(int eventId);

    /**
     * 查询所有Event
     * @return Event集合
     */
    List<Event> findAllEvents();


}
