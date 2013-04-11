/**
 * BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
 *
 * Copyright (c) 2010 BigBlueButton Inc. and by respective authors (see below).
 *
 * This program is free software; you can redistribute it and/or modify it under the
 * terms of the GNU Lesser General Public License as published by the Free Software
 * Foundation; either version 2.1 of the License, or (at your option) any later
 * version.
 *
 * BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along
 * with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.
 * 
 */
package org.bigbluebutton.common.events
{
	import flash.events.Event;
	import flash.geom.Point;
	import mx.core.UIComponent;
	import org.bigbluebutton.common.LogUtil;
	import org.bigbluebutton.common.events.EventCounter;
	import flexlib.mdi.containers.*;
	
	public class DragWindowEvent extends Event
	{
		public static const DRAG_WINDOW_EVENT:String = "DRAG_WINDOW_EVENT";
		public static const DRAG_START:String = "DRAG_START";
		public static const DRAG_END:String = "DRAG_END";
		public static const DRAG:String = "DRAG";
		
		public var mouseGlobal:Point;
		public var window:MDIWindow;
		public var mode:String;
		
		public function DragWindowEvent(mode:String, type:String = DRAG_WINDOW_EVENT)
		{
			super(type, true, false);
			this.mode = mode;
			LogUtil.debug("EVENTO GERADO - " + type);
			EventCounter.numberOfEvents++;
		}
		
	}
}
