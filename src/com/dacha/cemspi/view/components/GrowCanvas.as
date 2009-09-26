package com.dacha.cemspi.view.components
{
	
	import mx.containers.Canvas;
	
public class GrowCanvas extends Canvas
{
    override protected function measure():void
    {
        super.measure();
        this.minWidth = this.measuredWidth;
        this.minHeight = this.measuredHeight;
        this.maxHeight = this.measuredHeight;
    }
}
}