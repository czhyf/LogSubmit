package cn.edu360.pojo;

/**
 * 用于找到现存班级
 */

public class Class_name {
    private String class_id;


    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

    @Override
    public String toString() {
        return "Class_name{" +
                "class_id='" + class_id + '\'' +
                '}';
    }
}
