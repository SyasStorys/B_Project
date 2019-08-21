package kr.bproject.common;

public class SearchVO extends PageVO{

	private String searchKeyword = ""; 		//�˻�Ű����
	private String searchType = "";			//�˻� �ʵ� : ����, ����
	private String[] searchTypeArr;			//�˻� �ʵ带 �迭�� ��ȯ
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String[] getSearchTypeArr() {
		return searchType.split(",");
	}
	public void setSearchTypeArr(String[] searchTypeArr) {
		this.searchTypeArr = searchTypeArr;
	}
	
	
}
