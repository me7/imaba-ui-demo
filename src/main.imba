tag ui-button < button

	<self>
		css ol:none e:1000ms rd:6px py:1 px:3 bg:hue2 hue:emerald
			bd:1px solid transparent c:gray8 cursor:default

			@hover
				filter:brightness(1.15)
				bc:cool4

			@.nobg
				bg:transparent c:#site-c bc:#4B4B4B
				@hover bc:warm5

		<slot>

tag DemoButton
	<self>
		<div [d:vcc g:2]>
			<ui-button [hue:red]> "This is UI Button"
			<ui-button [hue:green]> "This is UI Button"
			<ui-button [hue:blue]> "This is UI Button"
			<ui-button [hue:yellow]> "This is UI Button"
			<ui-button.nobg> "This is UI Button"


tag ui-circle

	percent = 100
	radius = 10
	width = 2
	stroke = 'white'
	stroke2 = 'grey'
	fill='none'

	get circumference
		radius * 2 * Math.PI

	get dashoffset
		circumference - percent / 100 * circumference

	<self>
		css pos:rel

		<svg width="{radius*2 + width}px" height="{radius*2 + width}px">

			<circle
				r=radius
				stroke-width=width
				cx=(radius + width/2)
				cy=(radius + width/2)
				stroke=stroke2
				fill=fill
			>

			<circle
				r=radius
				stroke-width=width
				cx=(radius + width/2)
				cy=(radius + width/2)
				stroke=stroke
				stroke-dashoffset=dashoffset
				stroke-dasharray="{circumference} {circumference}"
				fill=fill
			>
				css e:350ms
					transform:rotate(-90deg)
					transform-origin:50% 50%

		<%slot>
			css pos:abs t:50% l:50% transform:translate(-50%,-50%)

			<slot>

tag DemoCircle
	<self>
		<ui-circle radius=50 width=20 percent=30 stroke='red'>
		<ui-circle radius=30 width=60 percent=30 stroke='red'>



tag App
	<self>
		"app"

imba.mount <App>
