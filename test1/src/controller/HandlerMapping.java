package controller;
// 컨트롤러 객체 생성을 담당하는 팩토리
// DispatcherServlet 과 Controller 계열의 구현체들과의 결합도를 낮춘다
public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	
	public static HandlerMapping getInstance() {
		return instance;
	}
	
	public Controller create(String command) {
		Controller c=null;
		
		if(command.equals("timetable")) {
			c=new timetableController();
		}else if(command.equals("")){
			//c=new FindProductByNameController();
		}else {
			System.out.println("잘못된 명령입니다!");
			return null;
		}
		return c;
	}
}
