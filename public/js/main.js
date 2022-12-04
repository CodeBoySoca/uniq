$(() => {

//    const overlay  = () => {
//       const overlay = document.createElement('div')
//       overlay.setAttribute('class', 'overlay')
//       const content = document.getElementById('content')

//       signupModal('Sign up', 'hello sir', overlay)
//       document.body.insertBefore(overlay, content)
//    }

//    const signupModal = (heading, body, cls) => {
//       const modal = document.createElement('div')
//       const h1 = document.createElement('h1')
//       const p = document.createElement('p')
//       modal.setAttribute('class', 'modal')

//       let headingTxt = document.createTextNode(heading)
//       let bodyTxt = document.createTextNode(body)

//       h1.appendChild(headingTxt)
//       p.appendChild(bodyTxt)
//       cls.appendChild(modal)
//    }

//    const = () => {

//    }

   $('.get-started-button').on('click', (e) => {
      //e.preventDefault();
      //overlay()

   })

   $('#contact-button').on('click', (e) => {
    e.preventDefault();
    var form = $('#contact form')
    console.log(form)
    $.ajax({
        type: 'post',
        url: '/contact',
        dataType: 'json',
        data: form.serialize()
    })
    return false

   })
})