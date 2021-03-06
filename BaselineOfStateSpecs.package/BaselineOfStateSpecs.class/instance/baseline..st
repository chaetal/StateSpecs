baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec 
			package: 'StateSpecs-Specs';
			package: 'StateSpecs-DSL-ShouldExpressions' with: [ spec requires: #('StateSpecs-Specs') ];
			package: 'StateSpecs-DSL-ClassWords' with: [ spec requires: #('StateSpecs-Specs') ];
			package: 'StateSpecs-Help' with: [
				spec requires: #('StateSpecs-DSL-ShouldExpressions' 'StateSpecs-DSL-ClassWords')];
			
			package: 'StateSpecs-Specs-Tests' with: [ spec requires: 'StateSpecs-Specs' ];
			package: 'StateSpecs-DSL-ShouldExpressions-Tests' with: [ spec requires: 'StateSpecs-DSL-ShouldExpressions' ];
			package: 'StateSpecs-DSL-ClassWords-Tests' with: [ spec requires: 'StateSpecs-DSL-ClassWords' ].
		
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('StateSpecs-Specs' 'StateSpecs-DSL-ShouldExpressions' 'StateSpecs-DSL-ClassWords');
			group: 'Tests' with: #('StateSpecs-Specs-Tests' 'StateSpecs-DSL-ShouldExpressions-Tests' 'StateSpecs-DSL-ClassWords-Tests' 'StateSpecs-Help').
	]