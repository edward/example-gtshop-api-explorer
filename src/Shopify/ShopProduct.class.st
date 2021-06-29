Class {
	#name : #ShopProduct,
	#superclass : #Object,
	#instVars : [
		'rawData'
	],
	#category : #Shopify
}

{ #category : #accessing }
ShopProduct >> gtViewImageSrcsListOn: aView [
	<gtView>
	^ aView list
		title: 'Image srcs' translated;
		priority: 8;
		items: [ self images];
		itemStencil: [ :aShopProductImage | aShopProductImage asPictureElement]
		
		"itemText: [ :anImage | (anImage at: #src) asRopedText ];"
		
		"Use send to transform the stream"
		"send: [ :anImageDictionary | ShopProductImage new rawData: anImageDictionary ]"
]

{ #category : #accessing }
ShopProduct >> gtViewShopProductImagesOn: aView [
	<gtView>
	^ aView list
		title: 'Shop product images' translated;
		priority: 8;
		items: [ self rawProductImageData collect: [ :productImageData | ShopProductImage new rawData: productImageData ] ];
		itemText: [ :productImage | productImage src ]

]

{ #category : #accessing }
ShopProduct >> images [
	^ (self product at: #images) collect: [ :imageRawData | ShopProductImage new rawData: imageRawData]

]

{ #category : #accessing }
ShopProduct >> product [
	^ rawData at: #product
]

{ #category : #accessing }
ShopProduct >> rawData [
	^ rawData
]

{ #category : #accessing }
ShopProduct >> rawData: productDictionary [ 

rawData := productDictionary
]

{ #category : #accessing }
ShopProduct >> rawProductImageData [
	^ self rawData at: #product at: #images
]
