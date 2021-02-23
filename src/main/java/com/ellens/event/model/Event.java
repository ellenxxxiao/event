package com.ellens.event.model;


import lombok.Data;
import java.util.Date;


/**
 *  实体类，对应表event
 */
@Data
public class Event {
    private int id;
    private int creatorId;
//    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date createTime;
    private int updatorId;
    private Date updateTime;
    private boolean active;
    private String name;
    private String description;
    private int budget;



}
