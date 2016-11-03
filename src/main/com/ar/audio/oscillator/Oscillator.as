package com.ar.audio.oscillator
{
	import flash.events.SampleDataEvent;
	import flash.media.Sound;

	/**
	 * A very simple sound generator.
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class Oscillator
	{
		private var _sound:Sound;

		private var _waveform:IWaveform;

		// time position in wave/oscillation
		private var _phase:Number = 0.0;

		private var _phaseIncrement:Number;

		// the amount of samples passed to sound driver on each SampleDataEvent
		private var _numSamples:int = 8192;

		// standard A is 440Hz, one octave lower is 220Hz, one higher is 880Hz
		private var _freq:Number;

		public function Oscillator( waveform:IWaveform, frequency:Number = 440.0, sampleRate:Number = 44100.0 )
		{
			_waveform = waveform;

			_freq = frequency;
			_phaseIncrement = frequency / sampleRate;

			_sound = new Sound();
			_sound.addEventListener( SampleDataEvent.SAMPLE_DATA, onSampleData );
		}

		private function onSampleData( event:SampleDataEvent ):void
		{
			var l:Number;
			var r:Number;

			var i:int = _numSamples + 1;

			while( --i )
			{
				l = r = _waveform.process( _phase );

				event.data.writeFloat( l );
				event.data.writeFloat( r );

				_phase += _phaseIncrement;

				if( _phase > 1.0 )
				{
					--_phase;
				}
			}
		}

		public function start():void
		{
			_sound.play();
		}

		public function stop():void
		{
			_sound.close();
		}

		public function get waveform():IWaveform
		{
			return _waveform;
		}

		public function set waveform( value:IWaveform ):void
		{
			_waveform = value;
		}

		public function toString():String
		{
			return "[Oscillator]";
		}
	}
}
