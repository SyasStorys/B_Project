package kr.bproject.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int brdno;
	private String brdtitle;
	private String brdwriter;
	private String brdmemo;
	private Date brddate;
	private int brdcnt;
	private String brddeleteflag;
	
	public String getBrdmemo() {
		return brdmemo.replaceAll("(?!)<script", "&lt;script");
	}

}
