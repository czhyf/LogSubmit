package cn.edu360.pojo;

public class Info {
    private String className;
    private String date;

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Info{" +
                "className='" + className + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
