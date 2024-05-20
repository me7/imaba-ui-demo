import'./ui-button.imba'
import'./ui-circle.imba'
import'./ui-carousel.imba'
import'./ui-modal.imba'
import'./ui-magnify.imba'

import imgUrl from './imba.webp'

tag DemoButton
	<self>
		<div [d:vcc g:2]>
			<ui-button [hue:red]> "This is UI Button"
			<ui-button [hue:green]> "This is UI Button"
			<ui-button [hue:blue]> "This is UI Button"
			<ui-button [hue:yellow]> "This is UI Button"
			<ui-button.nobg> "This is UI Button"

tag DemoCircle
	<self>
		<ui-circle radius=50 width=20 percent=30 stroke='red'>
		<ui-circle radius=30 width=60 percent=30 stroke='red'>

tag DemoCarousel
	imgList = [
		imgUrl
		'https://picsum.photos/200'
		'https://picsum.photos/300'
		'https://picsum.photos/400'
		imgUrl
	]
	<self>
		<ui-carousel data=imgList>

tag LoginModal < ui-modal
	def submit
		console.log "Logging in..."

	def body
		<div>
			<h2> "This is a modal"
			<ui-button@click=submit> "Log In"
			<ui-button@click=cancel> "Cancel"

tag App
	<self>
		<ui-magnify scale=1>
			<img src='https://placedog.net/200/200'>
		<button @click=(imba.mount <DemoCarousel>) [mb:2] > "Show Carousel"
		<ui-button @click=(imba.mount new <LoginModal>)> "Show Login Modal"
		<DemoCircle route='/circle'>
		<DemoButton route='/'>

imba.mount <App>
