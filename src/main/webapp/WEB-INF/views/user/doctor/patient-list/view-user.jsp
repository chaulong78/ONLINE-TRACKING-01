<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="view-user" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Patient Information</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <div class="box-body">
                                <form role="form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="fullName">Full Name</label>
                                            <span id="fullName">: Phạm Châu Long</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="birthDay">Age</label>
                                            <span id="birthDay">: 21</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="gender">Gender</label>
                                            <span id="gender">: MALE</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="phone">Phone</label>
                                            <span id="phone">: 0943394172</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <span id="email">: chaulongdbp@gmail.com</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="job">Job</label>
                                            <span id="job">: Student</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="address">Address</label>
                                            <span id="address">: Hà Nội</span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="health">Health Status</label>
                                            <span id="health">:<br>
                                            In 1948, WHO defined health as “a state of complete physical, mental and social well-being, and not merely the absence of disease”. Health can be considered in terms of a person’s body structure and function and the presence or absence of disease or signs (health status); their symptoms and what they can and cannot do i.e. the extent to which the condition affects the person’s normal life (quality of life).
                                            Health care is the prevention, treatment, and management of illness and the preservation of health through the services offered by health care organisations and professionals. It includes all the goods and services designed to promote health, including “preventive, curative and palliative interventions, whether directed to individuals or to populations”.
                                        </span>
                                        </div>

                                    </div>
                                </form>
                            </div>
                            <div class="box-footer">
                                <div style="float: right">
                                    <button type="button" class="btn btn-primary">View chart
                                    </button>
                                    <button type="button" class="btn btn-danger"
                                            data-dismiss="modal">Exit
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>