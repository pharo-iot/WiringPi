baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			package: #'WiringPi-Core';
			package: #'WiringPi-Extras' with: [
				spec requires: #(#'WiringPi-Core' ). ].
		spec 
			group: 'Core' with: #(#'WiringPi-Core' );
			group: 'Extras' with: #(#'WiringPi-Extras' );
			group: 'default' with: #('Core' )]