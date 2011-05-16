<script type="text/javascript">
    $(document).ready(function(){
        $("#internship_start_date").datepicker();
        $("#internship_end_date").datepicker();
    });
</script>

<div>{HOME_LINK} | {SEARCH_LINK}</div>
<h1>Add Internship</h1>
{PDF}
<div>
  {START_FORM}
  <table id="internship-form">
    <tr>
  <!-- Student info section -->
  <td>
  <table width="100px" class="sub-form" id="student-info">
    <h3 class="info-header">Student</h3>
    <tr>
      <td>
        {STUDENT_FIRST_NAME_LABEL}
      </td>
      <td>
        {STUDENT_FIRST_NAME}
      </td>
    </tr>
    <tr>
      <td>
        {STUDENT_MIDDLE_NAME_LABEL}
      </td>
      <td>
        {STUDENT_MIDDLE_NAME}
      </td>
    </tr>
    <tr>
      <td>
        {STUDENT_LAST_NAME_LABEL}
      </td>
      <td>
        {STUDENT_LAST_NAME}
      </td>
    </tr>
    <tr>
      <td>
        {BANNER_LABEL}
      </td>
      <td>
        {BANNER}
      </td>
    </tr>
    <tr>
      <td>
        {STUDENT_PHONE_LABEL}
      </td>
      <td>
        {STUDENT_PHONE}
      </td>
    </tr>
    <tr>
      <td>
        {STUDENT_EMAIL_LABEL}
      </td>
      <td>
        {STUDENT_EMAIL}
      </td>
    </tr>
    <tr>
      <td colspan=2>
        {UGRAD_MAJOR_LABEL}<br />
        {UGRAD_MAJOR}
      </td>
    </tr>
    <tr>
      <td colspan=2>
        {GRADUATED}<br />
        {GRADUATED_LABEL}
      </td>
    </tr>
    <tr>
      <td>
        {GRAD_PROG_LABEL}
      </td>
      <td>
        {GRAD_PROG}
      </td>
    </tr>
  </table>
  </td>
  <!-- End student info section -->
  <!-- Faculty info -->
  <td>
    <h3 class="info-header">Faculty</h3>
    <table width="50px" class="sub-form" id="faculty-info">
      <tr>
        <td>
          {SUPERVISOR_FIRST_NAME_LABEL}
        </td>
        <td>
          {SUPERVISOR_FIRST_NAME}
        </td>
      </tr>
      <tr>
        <td>
          {SUPERVISOR_LAST_NAME_LABEL}
        </td>
        <td>
          {SUPERVISOR_LAST_NAME}
        </td>
      </tr>
      <tr>
        <td>
          {SUPERVISOR_EMAIL_LABEL}
        </td>
        <td>
          {SUPERVISOR_EMAIL}
        </td>
      </tr>
      <tr>
        <td>
          {SUPERVISOR_PHONE_LABEL}
        </td>
        <td>
          {SUPERVISOR_PHONE}
        </td>
      </tr>
      <tr>
        <td colspan=2>
          {DEPARTMENT_LABEL}<br/ >
            {DEPARTMENT}
        </td>
      </tr>
    </table>
  </td>
  <!-- End faculty info -->
  </tr>
  <tr>

  <!-- Internship details -->
  <td> 
    <h3 class="info-header">Internship Details</h3>
    <table class="sub-form" id="agency-info">
      <tr>
        <td>{TERM_LABEL}</td>
        <td>{TERM}</td>
      </tr>
      <tr>
        <td>
          {START_DATE_LABEL}
        </td>
        <td>
          <span id="start-date">{START_DATE}</span>
        </td>
      </tr>
      <tr>
        <td>
          {END_DATE_LABEL}
        </td>
        <td>
          <span id="end-date">{END_DATE}</span>
        </td>
      </tr>
      <tr>
        <td>
          {CREDITS_LABEL}
        </td>
        <td>
          {CREDITS}
        </td>
      </tr>
      <tr>
        <td>
          {AVG_HOURS_WEEK_LABEL}
        </td>
        <td>
          {AVG_HOURS_WEEK}
        </td>
      </tr>
      <tr>
        <td>
          {DOMESTIC}{DOMESTIC_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {INTERNAT}{INTERNAT_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {PAID}{PAID_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {STIPEND}{STIPEND_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {UNPAID}{UNPAID_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {INTERNSHIP_DEFAULT_TYPE}{INTERNSHIP_DEFAULT_TYPE_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {SERVICE_LEARNING_TYPE}{SERVICE_LEARNING_TYPE_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {INDEPENDENT_STUDY_TYPE}{INDEPENDENT_STUDY_TYPE_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {RESEARCH_ASSIST_TYPE}{RESEARCH_ASSIST_TYPE_LABEL}
        </td>
      </tr>
      <tr>
        <td>
          {OTHER_TYPE_LABEL}{OTHER_TYPE}
        </td>
      </tr>

    </table>
  </td>
  <!-- End internship details -->
  <!-- Agency info -->
  <td>
    <h3 class="info-header">Agency</h3>
    <table width="50px" class="sub-form" id="agency-info">
      <tr>
        <td>
          {AGENCY_NAME_LABEL}
        </td>
        <td>
          {AGENCY_NAME}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_ADDRESS_LABEL}
        </td>
        <td>
          {AGENCY_ADDRESS}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_PHONE_LABEL}
        </td>
        <td>
          {AGENCY_PHONE}
        </td>
      </tr>
      <tr>
        <td colspan=2><h4>Supervisor Info</h4></td>
      </tr>
      <tr>
        <td>
          {AGENCY_SUP_FIRST_NAME_LABEL}
        </td>
        <td>
          {AGENCY_SUP_FIRST_NAME}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_SUP_LAST_NAME_LABEL}
        </td>
        <td>
          {AGENCY_SUP_LAST_NAME}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_SUP_PHONE_LABEL}
        </td>
        <td>
          {AGENCY_SUP_PHONE}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_SUP_EMAIL_LABEL}
        </td>
        <td>
          {AGENCY_SUP_EMAIL}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_SUP_FAX_LABEL}
        </td>
        <td>
          {AGENCY_SUP_FAX}
        </td>
      </tr>
      <tr>
        <td>
          {AGENCY_SUP_ADDRESS_LABEL}
        </td>
        <td>
          {AGENCY_SUP_ADDRESS}
        </td>
      </tr>
    </table>
  </td>
  <!-- End agency info -->
  </tr>
  </table>
  <b>{NOTES_LABEL}</b><br />{NOTES}<br />
  {SUBMIT}
{END_FORM}
</div>

