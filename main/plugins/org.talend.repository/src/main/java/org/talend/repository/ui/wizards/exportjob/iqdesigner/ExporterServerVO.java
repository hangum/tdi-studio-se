package org.talend.repository.ui.wizards.exportjob.iqdesigner;

/**
 * Export Server value object
 * 
 * <pre>
 *  IQDesigner에서 사용하는 오브젝트 입니다.
 *  Build Job에서 export 를 YES로 선택했을 경우 사용됩니다.
 *  
 *  Export하면 압축파일이 생기는 파일을 
 *  		서버에({@code #host/#job_path})
 *  		사용자({@code #id/#passwd}) 권한으로 
 *  		파일({code {@link #absoluteFilePath})을 전달합니다.
 * </pre>
 * 
 * @author hangum
 *
 */
public class ExporterServerVO {
	String id;
	String passwd;
	String host;
	String job_path;
	
	String absoluteFilePath;
	
	public ExporterServerVO() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getJob_path() {
		return job_path;
	}

	public void setJob_path(String job_path) {
		this.job_path = job_path;
	}

	public String getAbsoluteFilePath() {
		return absoluteFilePath;
	}

	public void setAbsoluteFilePath(String absoluteFilePath) {
		this.absoluteFilePath = absoluteFilePath;
	}

	@Override
	public String toString() {
		return "ExporterServerVO [id=" + id + ", passwd=" + passwd + ", host=" + host + ", job_path=" + job_path
				+ ", absoluteFilePath=" + absoluteFilePath + "]";
	}

	
}
