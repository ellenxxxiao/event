package com.ellens.event.service;

import com.ellens.event.mapper.EventMapper;
import com.ellens.event.model.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class EventService {

    @Autowired
    private EventMapper eventMapper;

    /**
     * 新增一个Event。首先给没有传参的属性赋值，然后call Mapper执行增逻辑。
     * @param event 新增的Event对象
     * @return 新增的Event对象
     */
    public Event addEvent(Event event){
        Date date = new Date();
        event.setCreateTime(date);
        event.setUpdateTime(date);
        event.setUpdatorId(event.getCreatorId());
        eventMapper.addEvent(event);
        return event;
    }

    /**
     * 删除指定id的Event
     * @param eventId 指定id
     * @return 被删除的Event对象
     */
    public Event deleteById(int eventId){
        Event event = findById(eventId);
        eventMapper.deleteById(eventId);
        return event;
    }

    /**
     * 更新一个Event
     * @param event 更新的Event对象
     * @return 更新的Event对象
     */
    public Event updateEvent(Event event){
        event.setUpdateTime(new Date());
        eventMapper.updateEvent(event);
        return findById(event.getId());
    }

    /**
     * 查询指定id的Event
     * @param eventId 指定id
     * @return 查询到的Event对象
     */
    public Event findById(int eventId){
        return eventMapper.findById(eventId);
    }

    /**
     * 查询所有Event
     * @return Event集合
     */
    public List<Event> findAllEvents(){
        return eventMapper.findAllEvents();
    }
}
