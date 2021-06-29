Class {
	#name : #BaselineOfGtShopApiExplorer,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtShopApiExplorer
}

{ #category : #accessing }
BaselineOfGtShopApiExplorer >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'Shopify' ]
			
]
