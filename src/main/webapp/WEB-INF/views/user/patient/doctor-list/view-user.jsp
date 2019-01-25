<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="view-user" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Doctor Information</h4>
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
                                            <label for="phone">Phone</label>
                                            <span id="phone">: 0943394172</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <span id="email">: chaulongdbp@gmail.com</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="address">Address</label>
                                            <span id="address">: Hà Nội</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="major">Major</label>
                                            <span id="major">: Cardiology</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="company">Company</label>
                                            <span id="company">: Bệnh viện Bạch Mai</span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="cerification">Certification</label>
                                            <span id="cerification">:<br>
                                            <ul>
                                                <li>
                                                    D.C. and M.S. (Chiro) - Doctor of Chiropractic and Master of Science (Chiropractic)
                                                </li>
                                                <li>
                                                    B.App.Sc. (clin). & B.C.Sc. - Bachelor of Applied Science (Clinical Science) & Bachelor of Chiropractic Science
                                                </li>
                                                <li>
                                                    B.App.Sc. (Compl) & M.Clin.Chiro. - Bachelor of Applied Science (Complementary Medicine) & Master of Clinical Chiropractic
                                                </li>
                                            </ul>
                                        </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="box-footer">
                                <div style="float: right">
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