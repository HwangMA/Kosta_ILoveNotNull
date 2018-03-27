package model;

public class classVO {
	private int classNo;
	private String className;
	private String teacherName;
	private int dateOfWeek;
	private String timeOfClass;
	public classVO() {
		super();
	}

	public classVO(int classNo, String className, String teacherName, int dateOfWeek, String timeOfClass) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.teacherName = teacherName;
		this.dateOfWeek = dateOfWeek;
		this.timeOfClass = timeOfClass;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public int getDateOfWeek() {
		return dateOfWeek;
	}
	public void setDateOfWeek(int dateOfWeek) {
		this.dateOfWeek = dateOfWeek;
	}
	public String getTimeOfClass() {
		return timeOfClass;
	}
	public void setTimeOfClass(String timeOfClass) {
		this.timeOfClass = timeOfClass;
	}
	@Override
	public String toString() {
		return "classVO [classNo=" + classNo + ", className=" + className + ", teacherName=" + teacherName
				+ ", dateOfWeek=" + dateOfWeek + ", timeOfClass=" + timeOfClass + "]";
	}
	
	
	
}
