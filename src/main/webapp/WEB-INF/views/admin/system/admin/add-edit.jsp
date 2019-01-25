<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="add-edit" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Admin Information</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <br>
                            <form role="form">
                                <div class="box-body">
                                    <div class="col-md-6">
                                        <div class="form-group" style="height: 59px">
                                            <label for="avatar">Avatar</label>
                                            <input type="file"
                                                   id="avatar" name="avatar">
                                        </div>

                                        <div class="form-group">
                                            <label for="userName">Username</label>
                                            <input type="text" class="form-control"
                                                   id="userName" name="userName"
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control"
                                                   id="email" name="email"
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label for="password">Password</label>
                                            <input type="password" class="form-control"
                                                   id="password" name="password"
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label for="rePassword">Re-password</label>
                                            <input type="password" class="form-control"
                                                   id="rePassword" name="password"
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label>
                                                <input type="checkbox" id="lock" name="lock"
                                                       class="minimal-red" value="">
                                                Lock admin
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="fullName">Full name</label>
                                            <input type="text" class="form-control"
                                                   id="fullName" name="fullName"
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label for="birthDay">Birth day</label>
                                            <input type="text" class="form-control datepicker"
                                                   style="border-radius: 0px"
                                                   id="birthDay" name="birthDay">
                                        </div>

                                        <div class="form-group" style="height: 59px">
                                            <label>Gender</label>
                                            <br>
                                            <label>
                                                <input type="radio" name="gender" class="minimal" value="MALE" checked>
                                                Male
                                            </label>
                                            <label>
                                                <input type="radio" name="gender" class="minimal" value="FEMALE">
                                                Female
                                            </label>
                                            <label>
                                                <input type="radio" name="gender" class="minimal" value="OTHER">
                                                Other
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <label for="phone">Phone</label>
                                            <input type="text" class="form-control"
                                                   id="phone" name="phone"
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label for="job">Job</label>
                                            <input type="text" class="form-control"
                                                   id="job" name="job"
                                                   required>
                                        </div>

                                    </div>
                                </div>
                                <div class="box-footer">
                                    <div style="float: right">
                                        <button type="submit" class="btn btn-primary">Save
                                        </button>
                                        <button type="button" class="btn btn-danger"
                                                data-dismiss="modal">Cancel
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>