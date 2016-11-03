package com.ar.audio.oscillator.waveform
{
	import com.ar.audio.oscillator.*;

	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class Triangle implements IWaveform
	{
		/**
		 * Creates a new instance of Triangle.
		 */
		public function Triangle()
		{
		}

		/**
		 * @inheritDoc
		 */
		public function process( phase:Number ):Number
		{
			var t:Number = ( phase - int( phase ) ) * 4;

			return ( t < 2 ) ? ( t - 1 ) : (3 - t );
		}

		/**
		 * Creates and returns a string representation of the Triangle object.
		 */
		public function toString():String
		{
			return "[Triangle]";
		}
	}
}