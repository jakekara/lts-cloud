import React from 'react';
import Hero from './Hero';

const About = props => (
  <div className='about'>
    <Hero text='About' />
    <div className='container'>
      <p>Tens of thousands of audiovisual interviews with survivors of the Holocaust have been recorded since the end of the Second World War. Let them speak, a digital monograph, a data edition, and a digital tool, makes approximately 3000 English language interviews from three collections available. The title is symbolic; it expresses the author’s intention to give voice to both murdered victims and survivors. Let them speak makes victim’s perspective investigable through various exploratory tools and an anthology of testimonial fragments. [Anna this is a sentence I was struggling with; an alternative: Let them speak gives tangible shape to victim’s perspective through various exploratory tools and an anthology of testimonial fragments.  ] The first prototype offers two ways to explore testimonies and the underlying experiences (further exploratory tools are under development):</p>

      <p>Through a table of contents readers can browse interviews, and read, listen or watch them. Transcripts are searchable as a linguistic corpus.</p>

      <p>Link to Explore</p>

      <p>Let them speak presents the experience of murdered victims through an anthology of testimonial fragments:</p> 

      <p>Link to fragments opening webpage</p>

      <p>Let them speak as a data edition brings together a wide range of methods from data science, natural language processing and machine learning.</p>

      <p>Link to methods</p>

      <p>Finally, Let them speak features essays on victim’s perspective:</p>

      <p>Link to essays</p>


      <p>
      <a href="/assets/files/extended_introduction.pdf" download="extended_introduction.pdf">Read the first draft of an extended introduction:(PDF to download or modal popping up)
      </a>

      </p>
    </div>
  </div>
)

export default About;
