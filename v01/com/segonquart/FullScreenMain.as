﻿package com.segonquart{	import flash.display.MovieClip;	import flash.display.Stage;	import flash.display.StageAlign;	import flash.display.StageScaleMode;	import flash.display.StageDisplayState;	import fl.controls.Button;	import flash.events.Event;	import flash.events.MouseEvent;	import flash.events.FullScreenEvent;	public class FullScreenMain extends MovieClip	{				private var full_nBtn:MovieClip;		private var full_nBtn_txt:String;		private var fullScreenStatus:Boolean;	public function FullScreenMain ()		{			full_nBtn = new MovieClip();			full_nBtn_txt = new TextField();			fs.mouseEnabled =true;			full_nBtn.mouseChildren=false;			full_nBtn.full_nBtn_txt.text = "Enter FULLSCREEN";			full_nBtn.x = 120;			full_nBtn.y = 50;			addChild (full_nBtn);			var swfStage:Stage = this.stage;			swfStage.scaleMode = StageScaleMode.NO_SCALE;			swfStage.align = StageAlign.TOP_LEFT;			full_nBtn.addEventListener (MouseEvent.CLICK, changefullScreenStatus);				full_nBtn.stage.addEventListener (FullScreenEvent.FULL_SCREEN, fullScreenRedraw);		}	private function changefullScreenStatus (e:MouseEvent):void		{			if (fullScreenStatus)			{				full_nBtn.stage.displayState = StageDisplayState.NORMAL;			}			else			{				full_nBtn.stage.displayState = StageDisplayState.FULL_SCREEN;			}		}	function fullScreenRedraw (event:FullScreenEvent):void		{			if (event.fullScreen)			{				full_nBtn.full_nBtn_txt.text = "Exit FULLSCREEN";				fullScreenStatus = true;			}			else			{				full_nBtn.full_nBtn_txt.text = "Enter FULLSCREEN";				fullScreenStatus = false;			}		}	}}