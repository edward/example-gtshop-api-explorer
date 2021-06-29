Class {
	#name : #ShopProductImage,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #Shopify
}

{ #category : #accessing }
ShopProductImage >> asPictureElement [
	^ (ZnEasy getJpeg: (rawData at: #src)) asElement
]

{ #category : #accessing }
ShopProductImage >> gtViewPictureOn: aView [
	<gtView>
	^ aView pannable
		title: 'Picture';
		stencil: [ self asPictureElement ]
]

{ #category : #accessing }
ShopProductImage >> rawData [
	^ rawData
]

{ #category : #accessing }
ShopProductImage >> rawData: aProductImageDictionary [
	 rawData := aProductImageDictionary
]

{ #category : #accessing }
ShopProductImage >> src [
	^ self rawData at: #src
]
