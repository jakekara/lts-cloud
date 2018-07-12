import React from 'react';
import Hero from './Hero';

const Methods = props => (
  <div className='methods'>
    <Hero text='Methodology' />
    <div className='container'>
      <p>Let them speak consists of several technological components that are described in this part. Beyond the discussion of how technology helped to accomplish this project, the three data sets made available by data providers are presented here, including their quantitative (distribution of gender, nationalities, average interview length, etc) and qualitative profiling description of interview methodologies applied when recording the interviews. Content is under development.</p>
      <h2>Data Sets</h2>
      <table className='image-trio'>
        <tbody>
          <tr>
            <td>
              <a href='/assets/files/sample.pdf' target='_blank'>
                <div className='background-image' />
                <div>Yale Fortunoff Archive</div>
              </a>
            </td>
            <td>
              <a href='/assets/files/sample.pdf' target='_blank'>
                <div className='background-image' />
                <div>USC Shoah Foundation, Visual Archive</div>
              </a>
            </td>
            <td>
              <a href='/assets/files/sample.pdf' target='_blank'>
                <div className='background-image' />
                <div>United States Holocaust Memorial Museum</div>
              </a>
            </td>
          </tr>
        </tbody>
      </table>

      <h2>Data Processing</h2>
      <table className='image-trio'>
        <tbody>
          <tr>
            <td>
              <a href='/assets/files/sample.pdf' download>
                <div className='background-image' />
                <div>Processing of transcripts and metadata</div>
              </a>
            </td>
            <td>
              <a href='/assets/files/sample.pdf' download>
                <div className='background-image' />
                <div>Linguistic Annotation</div>
              </a>
            </td>
            <td>
              <a href='/assets/files/sample.pdf' download>
                <div className='background-image' />
                <div>Retrieval of Fragments</div>
              </a>
            </td>
          </tr>
        </tbody>
      </table>

    </div>
  </div>
)

export default Methods;