package cn.edu360.dao;

import cn.edu360.pojo.Class_name;
import cn.edu360.pojo.Info;
import cn.edu360.pojo.Log_info;

import java.util.ArrayList;
import java.util.List;

public interface LogMapper {
    public ArrayList<Class_name> select_classNames();
    public int storage(Log_info log_info);
    public ArrayList<Log_info> select_log_info(Info info);
}
