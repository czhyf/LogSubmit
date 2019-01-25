package cn.edu360.pojo;

import java.util.Date;

/**
 * 班级 | 学生姓名 | 提交日期 | 遇到的问题 | 学习状态
 */
public class Log_info {
    private String className;
    private String studentName;
    private String problem;
    private String date;
    private String state;

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getProlem() {
        return problem;
    }

    public void setProlem(String prolem) {
        this.problem = prolem;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Log_info{" +
                "className='" + className + '\'' +
                ", studentName='" + studentName + '\'' +
                ", prolem='" + problem + '\'' +
                ", date=" + date +
                ", state='" + state + '\'' +
                '}';
    }
}
