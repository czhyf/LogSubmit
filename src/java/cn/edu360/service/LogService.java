package cn.edu360.service;

import cn.edu360.dao.LogMapper;
import cn.edu360.pojo.Class_name;
import cn.edu360.pojo.Info;
import cn.edu360.pojo.Log_info;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class LogService {

    @Resource
    private LogMapper logMapper;

    //查询现在有多少个班级
    public ArrayList<Class_name> get_class(){
        return logMapper.select_classNames();
    }

    //插入数据
    public  int inser_student(Log_info log_info){
        return logMapper.storage(log_info);
    }

    //查询日志信息
    public ArrayList<Log_info> select_log_info(Info info){
        return logMapper.select_log_info(info);
    }
}
