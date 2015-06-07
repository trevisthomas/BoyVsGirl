package com.bvg;

import java.util.Map;

public class Photo {
	private final Map<String, Object> rawPhoto;
	private final String collectionId; 
	
	/* This collection id business is an ugly hack that i used to make the url's show the photo in the collection and not in the gallery!
	 * 
	 * If you have trouble with it check out the way it builds the page url.  If the PageUrl isnt of the format expected (with the p) then it might not work right.
	 */
	
	/*
	 * http://help.zenfolio.com/customer/portal/articles/408312-display-images-sizes
	 * 
	 *  That article claims to show the sizes but it doesnt seem to match what i'm seeing.  Looks like my -3 is always 280 wide.
	 * 
	 */
	public Photo(Map<String, Object> rawPhoto, String collectionId) {
		this.rawPhoto = rawPhoto;
		this.collectionId = collectionId;
	}
	
	public Photo(Map<String, Object> rawPhoto) {
		this.rawPhoto = rawPhoto;
		this.collectionId = null;
	}

	public String getOriginalUrl() {
		return (String) rawPhoto.get("OriginalUrl");
	}

	public String getXLarge(){
		return getOriginalUrl().replaceFirst(".jpg", "-5.jpg");  
	}
	
	public String getXxLarge(){
		return getOriginalUrl().replaceFirst(".jpg", "-6.jpg");  
	}
	
	public String getMedium(){
		return getOriginalUrl().replaceFirst(".jpg", "-3.jpg");  
	}
	
	public int getMediumWidth(){
		return 280;
	}
	
	public int getMediumHeight(){
		double scaleHeight	= getMediumWidth() / getAspectRatio();
		return (int) scaleHeight;
	}
	
	//1,550 pixels along the longest side for horizontal photos, 960
	public int getXxLargeWidth(){
		double origW = (Integer)rawPhoto.get("Width") ;
		double origH = (Integer)rawPhoto.get("Height") ;
		boolean landscape = origW > origH;
		
		if(landscape){
			return 1550;
		} else {
			return (int) (960 / getAspectRatio());
		}
	}
	
	public int getXxLargeHeight(){
		//is it landscape?
//		double scaleHeight	= getXxLargeWidth() / getAspectRatio();
//		return (int) scaleHeight;
		double origW = (Integer)rawPhoto.get("Width") ;
		double origH = (Integer)rawPhoto.get("Height") ;
		boolean landscape = origW > origH;
		
		if(landscape){
			return (int) (1550 / getAspectRatio());
		} else {
			
			return 960;
		}
	}
	
	public double getAspectRatio(){
		double origW = (Integer)rawPhoto.get("Width") ;
		double origH = (Integer)rawPhoto.get("Height") ;
		
		return origW / origH;
	}
	
	public String getSquareThumbUrl(){
		return getOriginalUrl().replaceFirst(".jpg", "-2.jpg");  
	}
	
	public String getThumbUrl(){
		return getOriginalUrl().replaceFirst(".jpg", "-11.jpg");  
	}
	
	public String getSmallerThumbUrl(){
		return getOriginalUrl().replaceFirst(".jpg", "-10.jpg");  
	}
	
	public String getCreator(){
		//Not sure what field to use here.
		return (String) rawPhoto.get("Copyright");
	}
	
	/**
	 * I'm creating this version of the image getter to allow the javascript to determine what size to use
	 * @return
	 */
	public String getPhotoNoSuffix(){
		return getOriginalUrl().replaceFirst(".jpg", "");  
	}
	
	public String getUniqueName(){
//		return getPhotoNoSuffix().substring(getPhotoNoSuffix().lastIndexOf('/') + 1);
		return ((Integer)rawPhoto.get("Id")).toString();
	}
	
	public String getPhotoSetIdOfPhoto(){
		String pageUrl = (String) rawPhoto.get("PageUrl");
		
		if(pageUrl == null || pageUrl.indexOf("/p") < 0 || pageUrl.indexOf("/e") < 0){
			return "";
		}
		else{
			return pageUrl.substring(pageUrl.lastIndexOf("/p")+2, pageUrl.lastIndexOf("/e"));
		}
	}
	
	public String getCaption(){
		String caption = (String) rawPhoto.get("Caption");
		return caption != null ? caption : "";
	}
	
	public String getTitle(){
		String title = (String) rawPhoto.get("Title"); 
		return title != null ? title : "";
	}
	
	public String getCopyright(){
		String copyright = (String) rawPhoto.get("Copyright"); 
		return copyright != null ? copyright : "";
	}
	
	public String getCreatorFromFileName(){
		String filename = (String) rawPhoto.get("FileName");
		String creator = "Boy vs Girl";
		if(filename != null){
			if(filename.contains("-C0")){
				creator = "Chrissy";
			}
			else if(filename.contains("BvG-T")){
				creator = "Trevis";
			}
		}
		return creator;
	}
	
	public String getUploadedOn(){
		return Helpers.getDateAsRssString(rawPhoto, "UploadedOn"); 
	}
	
	public String getTakenOn(){
		return Helpers.getDateAsRssString(rawPhoto, "TakenOn");
	}
	
	public String getPageUrl(){
		String url;
		url = (String) rawPhoto.get("PageUrl");
		if(collectionId != null){
			url = "http://photos.boyvsgirlphotography.com/p" + collectionId + url.substring(url.indexOf("/", 40));
		}
		return url;
	}

}
