package model;

public class weatherBean {

	private String cityStr;

	private String countryStr;

	private String cloudsStr;
	
	private String timeOfSearch;
	
	private String windSpeed;
	
	private String icon;

	public weatherBean(String cityStr, String countryStr) {

		this.cityStr = cityStr;
		this.countryStr = countryStr;

	}

	public String getCityStr() {
		return cityStr;
	}

	public String getCountryStr() {
		return countryStr;
	}

	public String getCloudsStr() {
		return cloudsStr;
	}

	public void setCloudsStr(String cloudsStr) {
		this.cloudsStr = cloudsStr;
	}
	
	public String getTimeOfSearch() 
	{
		return timeOfSearch;
	}
	
	public void setTimeOfSearch(String timeStr) 
	{
		this.timeOfSearch = timeStr;
	}
	
	public String getWindSpeed() 
	{
		return windSpeed;
	}
		
	public void setWindSpeed(String windSpeed) 
	{
		this.windSpeed = windSpeed;
	}	
	
	public String getIcon() 
	{
		return icon;
	}
	
	public void setIcon(String iconString) 
	{
		this.icon = iconString;
	}
	}