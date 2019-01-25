<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="add-edit" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Role Information</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <br>
                            <form role="form">
                                <div class="box-body">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control"
                                                   id="name" name="name"
                                                   value=""
                                                   required>
                                        </div>

                                        <div class="form-group">
                                            <label for="description">Description</label>
                                            <textarea class="form-control"
                                                      id="description" name="description"
                                                      rows="5"
                                                      value=""
                                                      style="resize: none" required></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label>
                                                <input type="checkbox" id="lock" name="lock"
                                                       class="minimal-red" value="">
                                                Lock role
                                            </label>
                                        </div>

                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Permission</label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="" checked>
                                                Profile management, change password, ...
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Post management
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Message management
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Notification management
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Device management (Admin)
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                User management
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Works like doctor role
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Works like patient role
                                            </label>
                                            <br>
                                            <label>
                                                <input type="checkbox" name="permission" class="minimal"
                                                       value="">
                                                Administrator
                                            </label>
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