/*
 Copyright aswing.org, see the LICENCE.txt.
*/

package org.aswing.plaf.basic.accordion;


import org.aswing.AbstractButton;
	import org.aswing.Component;
	import org.aswing.JButton;
	import org.aswing.Icon;
	import org.aswing.ASFont;
	import org.aswing.ASColor;
	import org.aswing.Insets;
	import org.aswing.plaf.basic.tabbedpane.Tab;
	
/**
 * BasicAccordionHeader implemented with a JButton 
 * @author paling
 * @private
 */
class BasicAccordionHeader implements Tab{
	
	private var button:AbstractButton;
	private var owner:Component;
	private var placement:Int;
	
	public function new(){
	}
	
	public function initTab(owner:Component):Void{
		this.owner = owner;
		button = createHeaderButton();
	}
	
	public function setTabPlacement(tp:Int):Void{	
		placement = tp;
	}
	
	public function getTabPlacement():Int{
		return placement;
	}
	
	private function createHeaderButton():AbstractButton{
		return new JButton();
	}
	
	public function setTextAndIcon(text : String, icon : Icon) : Void{
		button.setText(text);
		button.setIcon(icon);
	}
	
	public function setFont(font:ASFont):Void{
		button.setFont(font);
	}
	
	public function setForeground(color:ASColor):Void{
		button.setForeground(color);
	}
	
	public function setSelected(b:Bool):Void{
		//Do nothing here, if your header is selectable, you can set it here like
		//button.setSelected(b);
	}
	
    public function setVerticalAlignment(alignment:Int):Void{
    	button.setVerticalAlignment(alignment);
    }
    public function setHorizontalAlignment(alignment:Int):Void{
    	button.setHorizontalAlignment(alignment);
    }
    public function setVerticalTextPosition(textPosition:Int):Void{
    	button.setVerticalTextPosition(textPosition);
    }
    public function setHorizontalTextPosition(textPosition:Int):Void{
    	button.setHorizontalTextPosition(textPosition);
    }
    public function setIconTextGap(iconTextGap:Int):Void{
    	button.setIconTextGap(iconTextGap);
    }
    public function setMargin(m:Insets):Void{
    	button.setMargin(m);
    }

	public function getTabComponent() : Component {
		return button;
	}

}