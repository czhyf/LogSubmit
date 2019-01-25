package cn.edu360.controller;

import cn.edu360.pojo.Class_name;
import cn.edu360.pojo.Info;
import cn.edu360.pojo.Log_info;
import cn.edu360.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
public class LogController {


    @Autowired
    private LogService logService;

    @RequestMapping(value = "/get_class.do",method = RequestMethod.GET)
    @ResponseBody
    public List<String> des(){
        List<String> list = new ArrayList<>();
        List<Class_name> class_names = logService.get_class();
        for (Class_name c : class_names){
            list.add(c.getClass_id());
        }
        return list;
    }

    @RequestMapping(value = "/submit.do",method = RequestMethod.POST,produces="text/html;charset=UTF-8")
    @ResponseBody
    public String submit(HttpServletRequest request) throws UnsupportedEncodingException {
        //拿到这个值，在获取当前时间
        String className = request.getParameter("class_name");
        String name= request.getParameter("entry[field_1]");
        String problem =request.getParameter("entry[field_5]");
        String state =  request.getParameter("entry[field_6]");
        String date = get_time();
        Log_info log_info = new Log_info();
        log_info.setClassName(className);
        log_info.setProlem(problem);
        log_info.setStudentName(name);
        log_info.setState(state);
        log_info.setDate(date);
        //存储到数据库中
        int a= logService.inser_student(log_info);
        String result="";
        if(a==1){
            result= "提交成功";
        }else{
            result="提交失败";
        }
        return result;

    }

    @RequestMapping(value = "/get_info.do",method = RequestMethod.POST,produces="text/html;charset=UTF-8")
    @ResponseBody
    public void get_text(HttpServletRequest request, HttpServletResponse response)  {

        try{
            //获取下载文件
            String realPath = request.getServletContext().getRealPath("/donload");
        //拿到这个值，在获取当前时间
       String className=request.getParameter("class_name");
       String date=request.getParameter("date");
        Info info = new Info();info.setClassName(className);info.setDate(date);
        ArrayList<Log_info> log_infos = logService.select_log_info(info);
        System.out.println(log_infos);
        if(log_infos.size()>=1){
            try {
                File file = new File(realPath+"/info.txt");
                if(file.exists()){
                    file.delete();
                    System.out.println(file.exists());
                }
                BufferedWriter bufferedWriter =new BufferedWriter(new FileWriter(realPath+"/info.txt"));
                for(Log_info l :log_infos){
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(l.getClassName()+","+l.getStudentName()+","+l.getProlem()+","+
                            l.getState()+","+l.getDate());
                    bufferedWriter.write(stringBuilder.toString());
                    bufferedWriter.newLine();
                    bufferedWriter.flush();
                }
                bufferedWriter.close();
            } catch (IOException e) {

                e.printStackTrace();
            }
           // 拿到路径

            String fileName=realPath+"/info.txt";
            InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
            String filename="info.txt";
            filename= URLEncoder.encode(filename,"utf-8");
            response.addHeader("Content-Disposition", "attachment;filename=" + filename);
            response.setContentType("multipart/form-data");
            BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
            int len = 0;
            while((len = bis.read()) != -1){
                out.write(len);
                out.flush();
            }
            out.close();
        }else{
        }
        }catch (Exception e){
            e.printStackTrace();
        }


    }


    //得到当前时间
    public String get_time(){
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = formatter.format(currentTime);
        return dateString;
    }


}
